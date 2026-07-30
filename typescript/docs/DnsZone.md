
# DnsZone


## Properties

Name | Type
------------ | -------------
`records` | { [key: string]: Array&lt;DnsRecord&gt;; }

## Example

```typescript
import type { DnsZone } from 'kinetic-sdk'

// TODO: Update the object below with actual values
const example = {
  "records": null,
} satisfies DnsZone

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DnsZone
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


