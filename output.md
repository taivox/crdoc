# API Reference

Packages:

- [entigo.com/v1alpha1](#entigocomv1alpha1)
- [entigo.com/v1alpha1](#entigocomv1alpha1)

# entigo.com/v1alpha1

Resource Types:

- [ECRRepository](#ecrrepository)




## ECRRepository
<sup><sup>[↩ Parent](#entigocomv1alpha1 )</sup></sup>








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
      <td>entigo.com/v1alpha1</td>
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

# entigo.com/v1alpha1

Resource Types:

- [ECRRepo](#ecrrepo)




## ECRRepo
<sup><sup>[↩ Parent](#entigocomv1alpha1 )</sup></sup>


