
# PreviousProof


## Properties

Name | Type
------------ | -------------
`salt` | Array&lt;number&gt;
`drandPulse` | number
`drandRandomness` | string
`iterations` | number
`vdfProof` | [VdfProof](VdfProof.md)
`signature` | Array&lt;number&gt;

## Example

```typescript
import type { PreviousProof } from ''

// TODO: Update the object below with actual values
const example = {
  "salt": null,
  "drandPulse": null,
  "drandRandomness": null,
  "iterations": null,
  "vdfProof": null,
  "signature": null,
} satisfies PreviousProof

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PreviousProof
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


