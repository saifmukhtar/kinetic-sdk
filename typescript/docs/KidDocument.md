
# KidDocument


## Properties

Name | Type
------------ | -------------
`docType` | string
`kid` | string
`createdAt` | number
`controllerKeys` | Array&lt;string&gt;
`manifest` | object
`revocationKeys` | Array&lt;string&gt;
`signature` | string

## Example

```typescript
import type { KidDocument } from ''

// TODO: Update the object below with actual values
const example = {
  "docType": null,
  "kid": null,
  "createdAt": null,
  "controllerKeys": null,
  "manifest": null,
  "revocationKeys": null,
  "signature": null,
} satisfies KidDocument

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as KidDocument
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


