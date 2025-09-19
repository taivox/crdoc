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

| Resource Type      | Naming Pattern    | Example (name="team-alpha") |
| ------------------ | ----------------- | --------------------------- |
| Namespace          | `<name>`          | `team-alpha`                |
| ArgoCD Project     | `<name>-project`  | `team-alpha-project`        |
| Karpenter NodePool | `<name>-nodepool` | `team-alpha-nodepool`       |
| Resource Quota     | `<name>-quota`    | `team-alpha-quota`          |
