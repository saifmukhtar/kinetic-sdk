# Kinetic SDKs

This repository contains the official client SDKs for the **Kinetic Daemon**, generated from the OpenAPI specification.

## Contents
- `openapi.yaml`: The single source of truth for the Kinetic REST API.
- `typescript/`: The fully-typed TypeScript client for frontend, mobile, and extension usage.

## Generating the SDK
The SDKs are generated using [OpenAPI Generator](https://openapi-generator.tech/). 

To manually regenerate the TypeScript SDK:
```bash
npx @openapitools/openapi-generator-cli generate -i openapi.yaml -g typescript-fetch -o ./typescript --additional-properties=supportsES6=true,typescriptThreePlus=true
```

## CI/CD
This repository uses GitHub Actions to automatically build the TypeScript SDK and verify compilation when changes are made.

## License
Apache 2.0
