
# CapabilityManifest


## Properties

Name | Type
------------ | -------------
`docType` | string
`kid` | string
`version` | number
`validFrom` | number
`services` | Array&lt;object&gt;
`signature` | string

## Example

```typescript
import type { CapabilityManifest } from ''

// TODO: Update the object below with actual values
const example = {
  "docType": null,
  "kid": null,
  "version": null,
  "validFrom": null,
  "services": null,
  "signature": null,
} satisfies CapabilityManifest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CapabilityManifest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


