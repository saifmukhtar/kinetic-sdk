# kinetic-sdk@0.1.3

A TypeScript SDK client for the 127.0.0.1 API.

## Usage

First, install the SDK from npm.

```bash
npm install kinetic-sdk --save
```

Next, try it out.


```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { CommitNameRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // CommitRequest
    commitRequest: ...,
  } satisfies CommitNameRequest;

  try {
    const data = await api.commitName(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```


## Documentation

### API Endpoints

All URIs are relative to *http://127.0.0.1:16002/api*

| Class | Method | HTTP request | Description
| ----- | ------ | ------------ | -------------
*PrivateApi* | [**commitName**](docs/PrivateApi.md#commitname) | **POST** /commit | Commit a name hash to DHT
*PrivateApi* | [**deleteVdfTask**](docs/PrivateApi.md#deletevdftask) | **DELETE** /vdf/status/{task_id} | Delete a VDF task from memory
*PrivateApi* | [**getConfig**](docs/PrivateApi.md#getconfig) | **GET** /config | Get config
*PrivateApi* | [**getOwnedNames**](docs/PrivateApi.md#getownednames) | **GET** /owned-names | Get list of locally owned names
*PrivateApi* | [**getVdfStatus**](docs/PrivateApi.md#getvdfstatus) | **GET** /vdf/status/{task_id} | Get status of a VDF task
*PrivateApi* | [**gossipPublish**](docs/PrivateApi.md#gossippublish) | **POST** /gossip/publish/{topic} | Broadcast a payload to a Gossipsub topic
*PrivateApi* | [**publishGovernance**](docs/PrivateApi.md#publishgovernance) | **POST** /publish-governance | Publish a Governance action to DHT
*PrivateApi* | [**publishKid**](docs/PrivateApi.md#publishkid) | **POST** /publish-kid | Publish a KID to DHT
*PrivateApi* | [**publishManifest**](docs/PrivateApi.md#publishmanifest) | **POST** /publish-manifest | Publish a Capability Manifest to DHT
*PrivateApi* | [**publishName**](docs/PrivateApi.md#publishname) | **POST** /publish | Publish a name reveal to DHT
*PrivateApi* | [**publishZone**](docs/PrivateApi.md#publishzone) | **POST** /zone/{name}/publish | Cryptographically sign and publish local zone to DHT
*PrivateApi* | [**saveZone**](docs/PrivateApi.md#savezone) | **POST** /zone/{name} | Save local DNS zone file
*PrivateApi* | [**syncAtlas**](docs/PrivateApi.md#syncatlas) | **POST** /internal/atlas/sync | Trigger a synchronization of the foreign TLD bridge
*PrivateApi* | [**updateConfig**](docs/PrivateApi.md#updateconfigoperation) | **POST** /config | Update config
*PrivateApi* | [**vdfRegister**](docs/PrivateApi.md#vdfregisteroperation) | **POST** /vdf/register | Start VDF name registration task
*PrivateApi* | [**vdfRenew**](docs/PrivateApi.md#vdfrenew) | **POST** /vdf/renew | Start VDF name renewal task
*PublicApi* | [**getGovernance**](docs/PublicApi.md#getgovernance) | **GET** /governance | Get current governance state
*PublicApi* | [**getHealth**](docs/PublicApi.md#gethealth) | **GET** /health | Get daemon health status
*PublicApi* | [**getNetworkStatus**](docs/PublicApi.md#getnetworkstatus) | **GET** /network-status | Get network status
*PublicApi* | [**getPeerId**](docs/PublicApi.md#getpeerid) | **GET** /peer_id | Get local peer ID
*PublicApi* | [**getTime**](docs/PublicApi.md#gettime) | **GET** /time | Get verified Kinetic network time
*PublicApi* | [**getZone**](docs/PublicApi.md#getzone) | **GET** /zone/{name} | Get local DNS zone file
*PublicApi* | [**gossipSubscribe**](docs/PublicApi.md#gossipsubscribe) | **GET** /gossip/subscribe/{topic} | Subscribe to a Gossipsub topic via Server-Sent Events (SSE)
*PublicApi* | [**resolveKid**](docs/PublicApi.md#resolvekid) | **GET** /resolve-kid/{did} | Resolve a KID
*PublicApi* | [**resolveName**](docs/PublicApi.md#resolvename) | **GET** /resolve/{name} | Resolve a Kinetic name


### Models

- [AuthorizedKid](docs/AuthorizedKid.md)
- [AuthorizedManifest](docs/AuthorizedManifest.md)
- [CapabilityManifest](docs/CapabilityManifest.md)
- [CommitRequest](docs/CommitRequest.md)
- [Commitment](docs/Commitment.md)
- [DeleteVdfTask200Response](docs/DeleteVdfTask200Response.md)
- [DnsRecord](docs/DnsRecord.md)
- [DnsZone](docs/DnsZone.md)
- [KidDocument](docs/KidDocument.md)
- [NameRenewRequest](docs/NameRenewRequest.md)
- [PreviousProof](docs/PreviousProof.md)
- [PublishRequest](docs/PublishRequest.md)
- [PublishResponse](docs/PublishResponse.md)
- [ResolveKid200Response](docs/ResolveKid200Response.md)
- [Reveal](docs/Reveal.md)
- [UpdateConfigRequest](docs/UpdateConfigRequest.md)
- [VdfProof](docs/VdfProof.md)
- [VdfRegister200Response](docs/VdfRegister200Response.md)
- [VdfRegisterRequest](docs/VdfRegisterRequest.md)
- [VdfTaskStatus](docs/VdfTaskStatus.md)

### Authorization


Authentication schemes defined for the API:
<a id="bearerAuth"></a>
#### bearerAuth


- **Type**: HTTP Bearer Token authentication

## About

This TypeScript SDK client supports the [Fetch API](https://fetch.spec.whatwg.org/)
and is automatically generated by the
[OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `0.1.0`
- Package version: `0.1.3`
- Generator version: `7.23.0`
- Build package: `org.openapitools.codegen.languages.TypeScriptFetchClientCodegen`

The generated npm module supports the following:

- Environments
  * Node.js
  * Webpack
  * Browserify
- Language levels
  * ES5 - you must have a Promises/A+ library installed
  * ES6
- Module systems
  * CommonJS
  * ES6 module system


## Development

### Building

To build the TypeScript source code, you need to have Node.js and npm installed.
After cloning the repository, navigate to the project directory and run:

```bash
npm install
npm run build
```

### Publishing

Once you've built the package, you can publish it to npm:

```bash
npm publish
```

## License

[Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0.html)
