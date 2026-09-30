#!/bin/bash
set -e

echo "Generating Rust SDK..."
npx -y @openapitools/openapi-generator-cli generate \
  -i openapi.yaml \
  -g rust \
  -o rust/ \
  --additional-properties=packageName=kinetic-sdk,packageVersion=0.1.6

# Refine Cargo.toml manually since OpenAPI Generator doesn't support author fields well
sed -i 's/authors = \["OpenAPI Generator team and contributors"\]/authors = \["Saif Mukhtar"\]/g' rust/Cargo.toml
sed -i 's/license = "Apache 2.0"/repository = "https:\/\/github.com\/saifmukhtar\/kinetic-sdk"\nlicense = "Apache-2.0"/g' rust/Cargo.toml

echo "Done!"
