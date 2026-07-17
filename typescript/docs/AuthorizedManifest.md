
# AuthorizedManifest


## Properties

Name | Type
------------ | -------------
`name` | string
`manifest` | [CapabilityManifest](CapabilityManifest.md)
`ownerSignature` | Array&lt;number&gt;

## Example

```typescript
import type { AuthorizedManifest } from ''

// TODO: Update the object below with actual values
const example = {
  "name": null,
  "manifest": null,
  "ownerSignature": null,
} satisfies AuthorizedManifest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as AuthorizedManifest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


