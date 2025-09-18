# API Reference

Packages:

- [artifacts.entigo.com/v1alpha1](#artifactsentigocomv1alpha1)
- [tenancy.entigo.com/v1alpha1](#tenancyentigocomv1alpha1)

# artifacts.entigo.com/v1alpha1

Resource Types:

- [ECRRepository](#ecrrepository)




## ECRRepository
<sup><sup>[↩ Parent](#artifactsentigocomv1alpha1 )</sup></sup>








<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
      <td><b>apiVersion</b></td>
      <td>string</td>
      <td>artifacts.entigo.com/v1alpha1</td>
      <td>true</td>
      </tr>
      <tr>
      <td><b>kind</b></td>
      <td>string</td>
      <td>ECRRepository</td>
      <td>true</td>
      </tr>
      <tr>
      <td><b><a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.27/#objectmeta-v1-meta">metadata</a></b></td>
      <td>object</td>
      <td>Refer to the Kubernetes API documentation for the fields of the `metadata` field.</td>
      <td>true</td>
      </tr><tr>
        <td><b><a href="#ecrrepositoryspec">spec</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#ecrrepositorystatus">status</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### ECRRepository.spec
<sup><sup>[↩ Parent](#ecrrepository)</sup></sup>





<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>repositoryName</b></td>
        <td>string</td>
        <td>
          Name of the ECR repository<br/>
        </td>
        <td>true</td>
      </tr><tr>
        <td><b>deletionProtection</b></td>
        <td>boolean</td>
        <td>
          Enable deletion protection (prevents deletion if images exist)<br/>
          <br/>
            <i>Default</i>: true<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>imageMutability</b></td>
        <td>enum</td>
        <td>
          Image tag mutability<br/>
          <br/>
            <i>Enum</i>: MUTABLE, IMMUTABLE<br/>
            <i>Default</i>: IMMUTABLE<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>kmsKeyArn</b></td>
        <td>string</td>
        <td>
          KMS key ARN for encryption<br/>
          <br/>
            <i>Default</i>: <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>maxImageCount</b></td>
        <td>integer</td>
        <td>
          Maximum number of images to keep<br/>
          <br/>
            <i>Default</i>: 100<br/>
            <i>Minimum</i>: 1<br/>
            <i>Maximum</i>: 10000<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>repositoryNamespace</b></td>
        <td>string</td>
        <td>
          Namespace for the ECR repository<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>scanOnPush</b></td>
        <td>boolean</td>
        <td>
          Enable vulnerability scanning on push<br/>
          <br/>
            <i>Default</i>: false<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>tags</b></td>
        <td>map[string]string</td>
        <td>
          AWS tags for the repository<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### ECRRepository.status
<sup><sup>[↩ Parent](#ecrrepository)</sup></sup>





<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>repositoryArn</b></td>
        <td>string</td>
        <td>
          ARN of the ECR repository<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>repositoryName</b></td>
        <td>string</td>
        <td>
          Full repository name in ECR<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>repositoryUrl</b></td>
        <td>string</td>
        <td>
          URL of the ECR repository<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>

# tenancy.entigo.com/v1alpha1

Resource Types:

- [SecurityZone](#securityzone)




## SecurityZone
<sup><sup>[↩ Parent](#tenancyentigocomv1alpha1 )</sup></sup>








<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
      <td><b>apiVersion</b></td>
      <td>string</td>
      <td>tenancy.entigo.com/v1alpha1</td>
      <td>true</td>
      </tr>
      <tr>
      <td><b>kind</b></td>
      <td>string</td>
      <td>SecurityZone</td>
      <td>true</td>
      </tr>
      <tr>
      <td><b><a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.27/#objectmeta-v1-meta">metadata</a></b></td>
      <td>object</td>
      <td>Refer to the Kubernetes API documentation for the fields of the `metadata` field.</td>
      <td>true</td>
      </tr><tr>
        <td><b><a href="#securityzonespec">spec</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#securityzonestatus">status</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.spec
<sup><sup>[↩ Parent](#securityzone)</sup></sup>





<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b><a href="#securityzonespecparameters">parameters</a></b></td>
        <td>object</td>
        <td>
          Security zone configuration parameters<br/>
        </td>
        <td>true</td>
      </tr><tr>
        <td><b>writeConnectionSecretsToNamespace</b></td>
        <td>string</td>
        <td>
          Namespace to write connection secrets to<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.spec.parameters
<sup><sup>[↩ Parent](#securityzonespec)</sup></sup>



Security zone configuration parameters

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>name</b></td>
        <td>string</td>
        <td>
          Security zone name (used for namespace, project, and nodepool naming)<br/>
        </td>
        <td>true</td>
      </tr><tr>
        <td><b>additionalSourceRepos</b></td>
        <td>[]string</td>
        <td>
          List of allowed source repositories for ArgoCD<br/>
          <br/>
            <i>Default</i>: []<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>description</b></td>
        <td>string</td>
        <td>
          Description of the security zone<br/>
          <br/>
            <i>Default</i>: Security zone for isolated team deployment<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#securityzonespecparametersnodepool">nodePool</a></b></td>
        <td>object</td>
        <td>
          Karpenter node pool configuration<br/>
          <br/>
            <i>Default</i>: map[]<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#securityzonespecparametersrbac">rbac</a></b></td>
        <td>object</td>
        <td>
          RBAC groups configuration for ArgoCD roles<br/>
          <br/>
            <i>Default</i>: map[]<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#securityzonespecparametersresourcequota">resourceQuota</a></b></td>
        <td>object</td>
        <td>
          Resource quota configuration<br/>
          <br/>
            <i>Default</i>: map[]<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.spec.parameters.nodePool
<sup><sup>[↩ Parent](#securityzonespecparameters)</sup></sup>



Karpenter node pool configuration

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>capacityType</b></td>
        <td>[]string</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: [spot on-demand]<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>consolidateAfter</b></td>
        <td>string</td>
        <td>
          Time to wait before consolidation<br/>
          <br/>
            <i>Default</i>: 1m<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>consolidationPolicy</b></td>
        <td>enum</td>
        <td>
          <br/>
          <br/>
            <i>Enum</i>: WhenEmpty, WhenEmptyOrUnderutilized<br/>
            <i>Default</i>: WhenEmptyOrUnderutilized<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>cpuLimit</b></td>
        <td>integer</td>
        <td>
          Maximum CPU limit for the node pool<br/>
          <br/>
            <i>Default</i>: 10<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>enabled</b></td>
        <td>boolean</td>
        <td>
          Enable dedicated node pool creation<br/>
          <br/>
            <i>Default</i>: true<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>instanceCategories</b></td>
        <td>[]string</td>
        <td>
          AWS instance categories (t, m, c, r)<br/>
          <br/>
            <i>Default</i>: [t]<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>instanceCpu</b></td>
        <td>[]string</td>
        <td>
          Allowed CPU counts for instances<br/>
          <br/>
            <i>Default</i>: [2 4 8]<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>nodeClassName</b></td>
        <td>string</td>
        <td>
          EC2NodeClass name to use<br/>
          <br/>
            <i>Default</i>: karpenter<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.spec.parameters.rbac
<sup><sup>[↩ Parent](#securityzonespecparameters)</sup></sup>



RBAC groups configuration for ArgoCD roles

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>fullAccessGroups</b></td>
        <td>[]string</td>
        <td>
          Groups with full access to applications and projects<br/>
          <br/>
            <i>Default</i>: []<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>gitlabGroups</b></td>
        <td>[]string</td>
        <td>
          Groups with GitLab CI/CD deployment access<br/>
          <br/>
            <i>Default</i>: []<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>readOnlyGroups</b></td>
        <td>[]string</td>
        <td>
          Groups with read-only access<br/>
          <br/>
            <i>Default</i>: []<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.spec.parameters.resourceQuota
<sup><sup>[↩ Parent](#securityzonespecparameters)</sup></sup>



Resource quota configuration

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>cpuRequests</b></td>
        <td>string</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: 10<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>memoryRequests</b></td>
        <td>string</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: 10Gi<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>pods</b></td>
        <td>string</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: 10<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.status
<sup><sup>[↩ Parent](#securityzone)</sup></sup>





<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b><a href="#securityzonestatusconditionsindex">conditions</a></b></td>
        <td>[]object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#securityzonestatusconnectiondetails">connectionDetails</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#securityzonestatusnamespacestatus">namespaceStatus</a></b></td>
        <td>object</td>
        <td>
          Status information about the created namespace<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#securityzonestatusnodepoolstatus">nodePoolStatus</a></b></td>
        <td>object</td>
        <td>
          Status information about the created node pool<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.status.conditions[index]
<sup><sup>[↩ Parent](#securityzonestatus)</sup></sup>





<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>lastTransitionTime</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>true</td>
      </tr><tr>
        <td><b>reason</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>true</td>
      </tr><tr>
        <td><b>status</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>true</td>
      </tr><tr>
        <td><b>type</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>true</td>
      </tr><tr>
        <td><b>message</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.status.connectionDetails
<sup><sup>[↩ Parent](#securityzonestatus)</sup></sup>





<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>lastPublishedTime</b></td>
        <td>string</td>
        <td>
          <br/>
          <br/>
            <i>Format</i>: date-time<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.status.namespaceStatus
<sup><sup>[↩ Parent](#securityzonestatus)</sup></sup>



Status information about the created namespace

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>name</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>ready</b></td>
        <td>boolean</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### SecurityZone.status.nodePoolStatus
<sup><sup>[↩ Parent](#securityzonestatus)</sup></sup>



Status information about the created node pool

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Required</th>
        </tr>
    </thead>
    <tbody><tr>
        <td><b>cpuLimit</b></td>
        <td>integer</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>name</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>ready</b></td>
        <td>boolean</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>
