
# AuthorizedKid


## Properties

Name | Type
------------ | -------------
`name` | string
`kidDoc` | [KidDocument](KidDocument.md)
`ownerSignature` | Array&lt;number&gt;

## Example

```typescript
import type { AuthorizedKid } from 'kinetic-sdk'

// TODO: Update the object below with actual values
const example = {
  "name": null,
  "kidDoc": null,
  "ownerSignature": null,
} satisfies AuthorizedKid

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as AuthorizedKid
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


