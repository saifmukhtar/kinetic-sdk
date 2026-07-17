
# VdfTaskStatus


## Properties

Name | Type
------------ | -------------
`status` | string
`iterations` | number
`progress` | number
`error` | string

## Example

```typescript
import type { VdfTaskStatus } from ''

// TODO: Update the object below with actual values
const example = {
  "status": null,
  "iterations": null,
  "progress": null,
  "error": null,
} satisfies VdfTaskStatus

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as VdfTaskStatus
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


