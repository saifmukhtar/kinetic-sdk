
# Reveal


## Properties

Name | Type
------------ | -------------
`protocolVersion` | number
`name` | string
`payload` | Array&lt;number&gt;
`salt` | Array&lt;number&gt;
`drandPulse` | number
`drandRandomness` | string
`iterations` | number
`vdfProof` | [VdfProof](VdfProof.md)
`pubkey` | Array&lt;number&gt;
`signature` | Array&lt;number&gt;
`previousProof` | [PreviousProof](PreviousProof.md)
`minerPubkey` | Array&lt;number&gt;

## Example

```typescript
import type { Reveal } from 'kinetic-sdk'

// TODO: Update the object below with actual values
const example = {
  "protocolVersion": null,
  "name": null,
  "payload": null,
  "salt": null,
  "drandPulse": null,
  "drandRandomness": null,
  "iterations": null,
  "vdfProof": null,
  "pubkey": null,
  "signature": null,
  "previousProof": null,
  "minerPubkey": null,
} satisfies Reveal

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Reveal
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


