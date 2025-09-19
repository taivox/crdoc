### Required Parameters

| Name                                | Description                                                           | Type     | Required | Default |
| ----------------------------------- | --------------------------------------------------------------------- | -------- | -------- | ------- |
| `parameters.name`                   | Security zone name (used for namespace, project, and nodepool naming) | `string` | **yes**  | -       |
| `writeConnectionSecretsToNamespace` | Namespace to write connection secrets to                              | `string` | **yes**  | -       |

### Optional Parameters

| Name                               | Description                                    | Type            | Required | Default                                        |
| ---------------------------------- | ---------------------------------------------- | --------------- | -------- | ---------------------------------------------- |
| `parameters.description`           | Description of the security zone               | `string`        | no       | `"Security zone for isolated team deployment"` |
| `parameters.additionalSourceRepos` | List of allowed source repositories for ArgoCD | `array[string]` | no       | `[]`                                           |

### SecurityZone.resourceQuota

| Name                                      | Description            | Type     | Required | Default  |
| ----------------------------------------- | ---------------------- | -------- | -------- | -------- |
| `parameters.resourceQuota.cpuRequests`    | CPU request quota      | `string` | no       | `"10"`   |
| `parameters.resourceQuota.memoryRequests` | Memory request quota   | `string` | no       | `"10Gi"` |
| `parameters.resourceQuota.pods`           | Maximum number of pods | `string` | no       | `"10"`   |

### SecurityZone.nodePool

| Name                                      | Description                                                                        | Type            | Required | Default                      |
| ----------------------------------------- | ---------------------------------------------------------------------------------- | --------------- | -------- | ---------------------------- |
| `parameters.nodePool.enabled`             | Enable dedicated node pool creation                                                | `boolean`       | no       | `true`                       |
| `parameters.nodePool.instanceCategories`  | AWS instance categories (t, m, c, r)                                               | `array[string]` | no       | `["t"]`                      |
| `parameters.nodePool.instanceCpu`         | Allowed CPU counts for instances                                                   | `array[string]` | no       | `["2", "4", "8"]`            |
| `parameters.nodePool.capacityType`        | Instance capacity types                                                            | `array[string]` | no       | `["spot", "on-demand"]`      |
| `parameters.nodePool.cpuLimit`            | Maximum CPU limit for the node pool                                                | `integer`       | no       | `10`                         |
| `parameters.nodePool.consolidationPolicy` | Node consolidation policy. Allowed values: `WhenEmpty`, `WhenEmptyOrUnderutilized` | `string`        | no       | `"WhenEmptyOrUnderutilized"` |
| `parameters.nodePool.consolidateAfter`    | Time to wait before consolidation                                                  | `string`        | no       | `"1m"`                       |
| `parameters.nodePool.nodeClassName`       | EC2NodeClass name to use                                                           | `string`        | no       | `"karpenter"`                |

### SecurityZone.rbac

| Name                               | Description                                          | Type            | Required | Default |
| ---------------------------------- | ---------------------------------------------------- | --------------- | -------- | ------- |
| `parameters.rbac.fullAccessGroups` | Groups with full access to applications and projects | `array[string]` | no       | `[]`    |
| `parameters.rbac.gitlabGroups`     | Groups with GitLab CI/CD deployment access           | `array[string]` | no       | `[]`    |
| `parameters.rbac.readOnlyGroups`   | Groups with read-only access                         | `array[string]` | no       | `[]`    |

## Outputs

### Status Fields

| Name                                         | Description                                 | Type                 |
| -------------------------------------------- | ------------------------------------------- | -------------------- |
| `status.conditions`                          | Standard Kubernetes condition array         | `array[object]`      |
| `status.connectionDetails.lastPublishedTime` | Last time connection details were published | `string` (date-time) |
| `status.namespaceStatus.name`                | Name of the created namespace               | `string`             |
| `status.namespaceStatus.ready`               | Namespace readiness status                  | `boolean`            |
| `status.nodePoolStatus.name`                 | Name of the created node pool               | `string`             |
| `status.nodePoolStatus.ready`                | Node pool readiness status                  | `boolean`            |
| `status.nodePoolStatus.cpuLimit`             | Configured CPU limit for the node pool      | `integer`            |

## Resource Names

The following resources will be created based on the `parameters.name` value:

| Resource Type      | Naming Pattern | Example (name="team-alpha") |
| ------------------ | -------------- | --------------------------- |
| Namespace          | `<n>`          | `team-alpha`                |
| ArgoCD Project     | `<n>-project`  | `team-alpha-project`        |
| Karpenter NodePool | `<n>-nodepool` | `team-alpha-nodepool`       |
| Resource Quota     | `<n>-quota`    | `team-alpha-quota`          |

## Examples

### Simple Example

```yaml
apiVersion: tenancy.entigo.com/v1alpha1
kind: SecurityZone
metadata:
  name: dev-team-zone
spec:
  parameters:
    name: dev-team
    description: 'Development team security zone'
```

### Advanced Example

```yaml
apiVersion: tenancy.entigo.com/v1alpha1
kind: SecurityZone
metadata:
  name: production-zone
spec:
  parameters:
    name: prod-platform
    description: 'Production platform with strict isolation and high availability'

    # Additional Git repositories for ArgoCD
    additionalSourceRepos:
      - 'https://gitlab.company.com/platform/*'
      - 'https://github.com/company/prod-*'
      - 'https://gitlab.company.com/shared/helm-charts'

    # Resource quotas for namespace
    resourceQuota:
      cpuRequests: '100'
      memoryRequests: '200Gi'
      pods: '150'

    # Dedicated node pool configuration
    nodePool:
      enabled: true
      instanceCategories: ['m', 'c', 'r'] # Memory, compute, and memory-optimized
      instanceCpu: ['8', '16', '32', '64']
      capacityType: ['on-demand'] # Production uses on-demand only
      cpuLimit: 500
      consolidationPolicy: 'WhenEmpty' # Conservative consolidation for production
      consolidateAfter: '10m'
      nodeClassName: 'production-nodeclass'

    # RBAC configuration
    rbac:
      fullAccessGroups:
        - 'platform-admins'
        - 'sre-team'
      gitlabGroups:
        - 'prod-ci-runners'
        - 'deployment-automation'
      readOnlyGroups:
        - 'developers'
        - 'support-team'
        - 'auditors'
```
