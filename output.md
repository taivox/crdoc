# API Reference

Packages:

- [entigo.com/v1alpha1](#entigocomv1alpha1)

# entigo.com/v1alpha1

Resource Types:

- [ECRRepository](#ecrrepository)

- [S3Bucket](#s3bucket)




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

## S3Bucket
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
      <td>S3Bucket</td>
      <td>true</td>
      </tr>
      <tr>
      <td><b><a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.27/#objectmeta-v1-meta">metadata</a></b></td>
      <td>object</td>
      <td>Refer to the Kubernetes API documentation for the fields of the `metadata` field.</td>
      <td>true</td>
      </tr><tr>
        <td><b><a href="#s3bucketspec">spec</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketstatus">status</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec
<sup><sup>[↩ Parent](#s3bucket)</sup></sup>





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
        <td><b>bucketName</b></td>
        <td>string</td>
        <td>
          Name of the S3 bucket<br/>
        </td>
        <td>true</td>
      </tr><tr>
        <td><b><a href="#s3bucketspeccorsrulesindex">corsRules</a></b></td>
        <td>[]object</td>
        <td>
          CORS rules for the bucket<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>deletionProtection</b></td>
        <td>boolean</td>
        <td>
          Enable deletion protection<br/>
          <br/>
            <i>Default</i>: true<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>kmsKeyArn</b></td>
        <td>string</td>
        <td>
          KMS key ARN for encryption<br/>
          <br/>
            <i>Default</i>: my-kms-key<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketspeclifecyclerulesindex">lifecycleRules</a></b></td>
        <td>[]object</td>
        <td>
          Lifecycle rules for the bucket<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketspeclogging">logging</a></b></td>
        <td>object</td>
        <td>
          Server access logging configuration<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketspecpublicaccessblock">publicAccessBlock</a></b></td>
        <td>object</td>
        <td>
          Public access block configuration<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketspecreplication">replication</a></b></td>
        <td>object</td>
        <td>
          Replication configuration<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>tags</b></td>
        <td>map[string]string</td>
        <td>
          AWS tags for the bucket<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>versioning</b></td>
        <td>boolean</td>
        <td>
          Enable versioning for the bucket<br/>
          <br/>
            <i>Default</i>: false<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketspecwebsiteconfiguration">websiteConfiguration</a></b></td>
        <td>object</td>
        <td>
          Static website hosting configuration<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.corsRules[index]
<sup><sup>[↩ Parent](#s3bucketspec)</sup></sup>





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
        <td><b>allowedHeaders</b></td>
        <td>[]string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>allowedMethods</b></td>
        <td>[]string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>allowedOrigins</b></td>
        <td>[]string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>exposedHeaders</b></td>
        <td>[]string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>maxAgeSeconds</b></td>
        <td>integer</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.lifecycleRules[index]
<sup><sup>[↩ Parent](#s3bucketspec)</sup></sup>





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
        <td><b><a href="#s3bucketspeclifecyclerulesindexexpiration">expiration</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>id</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketspeclifecyclerulesindexnoncurrentversionexpiration">noncurrentVersionExpiration</a></b></td>
        <td>object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketspeclifecyclerulesindexnoncurrentversiontransitionsindex">noncurrentVersionTransitions</a></b></td>
        <td>[]object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>prefix</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>status</b></td>
        <td>enum</td>
        <td>
          <br/>
          <br/>
            <i>Enum</i>: Enabled, Disabled<br/>
            <i>Default</i>: Enabled<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b><a href="#s3bucketspeclifecyclerulesindextransitionsindex">transitions</a></b></td>
        <td>[]object</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.lifecycleRules[index].expiration
<sup><sup>[↩ Parent](#s3bucketspeclifecyclerulesindex)</sup></sup>





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
        <td><b>days</b></td>
        <td>integer</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.lifecycleRules[index].noncurrentVersionExpiration
<sup><sup>[↩ Parent](#s3bucketspeclifecyclerulesindex)</sup></sup>





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
        <td><b>days</b></td>
        <td>integer</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>newerNoncurrentVersions</b></td>
        <td>integer</td>
        <td>
          Number of newer noncurrent versions to retain before expiration<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.lifecycleRules[index].noncurrentVersionTransitions[index]
<sup><sup>[↩ Parent](#s3bucketspeclifecyclerulesindex)</sup></sup>





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
        <td><b>days</b></td>
        <td>integer</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>newerNoncurrentVersions</b></td>
        <td>integer</td>
        <td>
          Number of newer noncurrent versions to retain<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>storageClass</b></td>
        <td>enum</td>
        <td>
          <br/>
          <br/>
            <i>Enum</i>: STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, GLACIER_IR<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.lifecycleRules[index].transitions[index]
<sup><sup>[↩ Parent](#s3bucketspeclifecyclerulesindex)</sup></sup>





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
        <td><b>days</b></td>
        <td>integer</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>storageClass</b></td>
        <td>enum</td>
        <td>
          <br/>
          <br/>
            <i>Enum</i>: STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, GLACIER_IR<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.logging
<sup><sup>[↩ Parent](#s3bucketspec)</sup></sup>



Server access logging configuration

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
        <td><b>enabled</b></td>
        <td>boolean</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: false<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>targetBucket</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>targetPrefix</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.publicAccessBlock
<sup><sup>[↩ Parent](#s3bucketspec)</sup></sup>



Public access block configuration

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
        <td><b>blockPublicAcls</b></td>
        <td>boolean</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: true<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>blockPublicPolicy</b></td>
        <td>boolean</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: true<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>ignorePublicAcls</b></td>
        <td>boolean</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: true<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>restrictPublicBuckets</b></td>
        <td>boolean</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: true<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.replication
<sup><sup>[↩ Parent](#s3bucketspec)</sup></sup>



Replication configuration

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
        <td><b>destinationBucket</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>destinationRegion</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>enabled</b></td>
        <td>boolean</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: false<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>storageClass</b></td>
        <td>string</td>
        <td>
          <br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.spec.websiteConfiguration
<sup><sup>[↩ Parent](#s3bucketspec)</sup></sup>



Static website hosting configuration

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
        <td><b>enabled</b></td>
        <td>boolean</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: false<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>errorDocument</b></td>
        <td>string</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: error.html<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>indexDocument</b></td>
        <td>string</td>
        <td>
          <br/>
          <br/>
            <i>Default</i>: index.html<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>


### S3Bucket.status
<sup><sup>[↩ Parent](#s3bucket)</sup></sup>





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
        <td><b>bucketArn</b></td>
        <td>string</td>
        <td>
          ARN of the S3 bucket<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>bucketDomainName</b></td>
        <td>string</td>
        <td>
          Domain name of the S3 bucket<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>bucketRegionalDomainName</b></td>
        <td>string</td>
        <td>
          Regional domain name of the S3 bucket<br/>
        </td>
        <td>false</td>
      </tr><tr>
        <td><b>websiteEndpoint</b></td>
        <td>string</td>
        <td>
          Website endpoint (if website hosting is enabled)<br/>
        </td>
        <td>false</td>
      </tr></tbody>
</table>
