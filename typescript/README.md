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
import type { CommitPostRequest } from 'kinetic-sdk';

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
  } satisfies CommitPostRequest;

  try {
    const data = await api.commitPost(body);
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
*PrivateApi* | [**commitPost**](docs/PrivateApi.md#commitpost) | **POST** /commit | Commit a name hash to DHT
*PrivateApi* | [**configGet**](docs/PrivateApi.md#configget) | **GET** /config | Get config
*PrivateApi* | [**configPost**](docs/PrivateApi.md#configpostoperation) | **POST** /config | Update config
*PrivateApi* | [**gossipPublishTopicPost**](docs/PrivateApi.md#gossippublishtopicpost) | **POST** /gossip/publish/{topic} | Broadcast a payload to a Gossipsub topic
*PrivateApi* | [**internalAtlasSyncPost**](docs/PrivateApi.md#internalatlassyncpost) | **POST** /internal/atlas/sync | Trigger a synchronization of the foreign TLD bridge
*PrivateApi* | [**ownedNamesGet**](docs/PrivateApi.md#ownednamesget) | **GET** /owned-names | Get list of locally owned names
*PrivateApi* | [**publishGovernancePost**](docs/PrivateApi.md#publishgovernancepost) | **POST** /publish-governance | Publish a Governance action to DHT
*PrivateApi* | [**publishKidPost**](docs/PrivateApi.md#publishkidpost) | **POST** /publish-kid | Publish a KID to DHT
*PrivateApi* | [**publishManifestPost**](docs/PrivateApi.md#publishmanifestpost) | **POST** /publish-manifest | Publish a Capability Manifest to DHT
*PrivateApi* | [**publishPost**](docs/PrivateApi.md#publishpost) | **POST** /publish | Publish a name reveal to DHT
*PrivateApi* | [**vdfRegisterPost**](docs/PrivateApi.md#vdfregisterpost) | **POST** /vdf/register | Start VDF name registration task
*PrivateApi* | [**vdfRenewPost**](docs/PrivateApi.md#vdfrenewpost) | **POST** /vdf/renew | Start VDF name renewal task
*PrivateApi* | [**vdfStatusTaskIdDelete**](docs/PrivateApi.md#vdfstatustaskiddelete) | **DELETE** /vdf/status/{task_id} | Delete a VDF task from memory
*PrivateApi* | [**vdfStatusTaskIdGet**](docs/PrivateApi.md#vdfstatustaskidget) | **GET** /vdf/status/{task_id} | Get status of a VDF task
*PrivateApi* | [**zoneNamePost**](docs/PrivateApi.md#zonenamepost) | **POST** /zone/{name} | Save local DNS zone file
*PrivateApi* | [**zoneNamePublishPost**](docs/PrivateApi.md#zonenamepublishpost) | **POST** /zone/{name}/publish | Cryptographically sign and publish local zone to DHT
*PublicApi* | [**gossipSubscribeTopicGet**](docs/PublicApi.md#gossipsubscribetopicget) | **GET** /gossip/subscribe/{topic} | Subscribe to a Gossipsub topic via Server-Sent Events (SSE)
*PublicApi* | [**governanceGet**](docs/PublicApi.md#governanceget) | **GET** /governance | Get current governance state
*PublicApi* | [**healthGet**](docs/PublicApi.md#healthget) | **GET** /health | Get daemon health status
*PublicApi* | [**networkStatusGet**](docs/PublicApi.md#networkstatusget) | **GET** /network-status | Get network status
*PublicApi* | [**peerIdGet**](docs/PublicApi.md#peeridget) | **GET** /peer_id | Get local peer ID
*PublicApi* | [**resolveKidDidGet**](docs/PublicApi.md#resolvekiddidget) | **GET** /resolve-kid/{did} | Resolve a KID
*PublicApi* | [**resolveNameGet**](docs/PublicApi.md#resolvenameget) | **GET** /resolve/{name} | Resolve a Kinetic name
*PublicApi* | [**timeGet**](docs/PublicApi.md#timeget) | **GET** /time | Get verified Kinetic network time
*PublicApi* | [**zoneNameGet**](docs/PublicApi.md#zonenameget) | **GET** /zone/{name} | Get local DNS zone file


### Models

- [AuthorizedKid](docs/AuthorizedKid.md)
- [AuthorizedManifest](docs/AuthorizedManifest.md)
- [CapabilityManifest](docs/CapabilityManifest.md)
- [CommitRequest](docs/CommitRequest.md)
- [Commitment](docs/Commitment.md)
- [ConfigPostRequest](docs/ConfigPostRequest.md)
- [DnsRecord](docs/DnsRecord.md)
- [DnsZone](docs/DnsZone.md)
- [KidDocument](docs/KidDocument.md)
- [NameRenewRequest](docs/NameRenewRequest.md)
- [PreviousProof](docs/PreviousProof.md)
- [PublishRequest](docs/PublishRequest.md)
- [PublishResponse](docs/PublishResponse.md)
- [ResolveKidDidGet200Response](docs/ResolveKidDidGet200Response.md)
- [Reveal](docs/Reveal.md)
- [VdfProof](docs/VdfProof.md)
- [VdfRegisterPost200Response](docs/VdfRegisterPost200Response.md)
- [VdfRegisterRequest](docs/VdfRegisterRequest.md)
- [VdfStatusTaskIdDelete200Response](docs/VdfStatusTaskIdDelete200Response.md)
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
