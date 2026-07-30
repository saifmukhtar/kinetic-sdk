# PrivateApi

All URIs are relative to *http://127.0.0.1:16002/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**commitName**](PrivateApi.md#commitname) | **POST** /commit | Commit a name hash to DHT |
| [**deleteVdfTask**](PrivateApi.md#deletevdftask) | **DELETE** /vdf/status/{task_id} | Delete a VDF task from memory |
| [**getConfig**](PrivateApi.md#getconfig) | **GET** /config | Get config |
| [**getOwnedNames**](PrivateApi.md#getownednames) | **GET** /owned-names | Get list of locally owned names |
| [**getVdfStatus**](PrivateApi.md#getvdfstatus) | **GET** /vdf/status/{task_id} | Get status of a VDF task |
| [**gossipPublish**](PrivateApi.md#gossippublish) | **POST** /gossip/publish/{topic} | Broadcast a payload to a Gossipsub topic |
| [**publishGovernance**](PrivateApi.md#publishgovernance) | **POST** /publish-governance | Publish a Governance action to DHT |
| [**publishKid**](PrivateApi.md#publishkid) | **POST** /publish-kid | Publish a KID to DHT |
| [**publishManifest**](PrivateApi.md#publishmanifest) | **POST** /publish-manifest | Publish a Capability Manifest to DHT |
| [**publishName**](PrivateApi.md#publishname) | **POST** /publish | Publish a name reveal to DHT |
| [**publishZone**](PrivateApi.md#publishzone) | **POST** /zone/{name}/publish | Cryptographically sign and publish local zone to DHT |
| [**saveZone**](PrivateApi.md#savezone) | **POST** /zone/{name} | Save local DNS zone file |
| [**syncAtlas**](PrivateApi.md#syncatlas) | **POST** /internal/atlas/sync | Trigger a synchronization of the foreign TLD bridge |
| [**updateConfig**](PrivateApi.md#updateconfigoperation) | **POST** /config | Update config |
| [**vdfRegister**](PrivateApi.md#vdfregisteroperation) | **POST** /vdf/register | Start VDF name registration task |
| [**vdfRenew**](PrivateApi.md#vdfrenew) | **POST** /vdf/renew | Start VDF name renewal task |



## commitName

> PublishResponse commitName(commitRequest)

Commit a name hash to DHT

Requires Publish or Admin role.

### Example

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

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **commitRequest** | [CommitRequest](CommitRequest.md) |  | |

### Return type

[**PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Committed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteVdfTask

> DeleteVdfTask200Response deleteVdfTask(taskId)

Delete a VDF task from memory

Requires VDF or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { DeleteVdfTaskRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // string
    taskId: taskId_example,
  } satisfies DeleteVdfTaskRequest;

  try {
    const data = await api.deleteVdfTask(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **taskId** | `string` |  | [Defaults to `undefined`] |

### Return type

[**DeleteVdfTask200Response**](DeleteVdfTask200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Task deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getConfig

> getConfig()

Get config

Requires Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { GetConfigRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  try {
    const data = await api.getConfig();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

`void` (Empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Config Object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getOwnedNames

> Array&lt;string&gt; getOwnedNames()

Get list of locally owned names

Requires Publish or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { GetOwnedNamesRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  try {
    const data = await api.getOwnedNames();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array<string>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of names |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getVdfStatus

> VdfTaskStatus getVdfStatus(taskId)

Get status of a VDF task

Requires VDF or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { GetVdfStatusRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // string
    taskId: taskId_example,
  } satisfies GetVdfStatusRequest;

  try {
    const data = await api.getVdfStatus(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **taskId** | `string` |  | [Defaults to `undefined`] |

### Return type

[**VdfTaskStatus**](VdfTaskStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Task status |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## gossipPublish

> PublishResponse gossipPublish(topic, body)

Broadcast a payload to a Gossipsub topic

Requires Publish or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { GossipPublishRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // string
    topic: topic_example,
    // object
    body: Object,
  } satisfies GossipPublishRequest;

  try {
    const data = await api.gossipPublish(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **topic** | `string` |  | [Defaults to `undefined`] |
| **body** | `object` |  | |

### Return type

[**PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Published |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## publishGovernance

> PublishResponse publishGovernance(body)

Publish a Governance action to DHT

Requires Governance or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { PublishGovernanceRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // object
    body: Object,
  } satisfies PublishGovernanceRequest;

  try {
    const data = await api.publishGovernance(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **body** | `object` |  | |

### Return type

[**PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Published |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## publishKid

> PublishResponse publishKid(authorizedKid)

Publish a KID to DHT

Requires Publish or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { PublishKidRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // AuthorizedKid
    authorizedKid: ...,
  } satisfies PublishKidRequest;

  try {
    const data = await api.publishKid(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **authorizedKid** | [AuthorizedKid](AuthorizedKid.md) |  | |

### Return type

[**PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Published |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## publishManifest

> PublishResponse publishManifest(authorizedManifest)

Publish a Capability Manifest to DHT

Requires Publish or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { PublishManifestRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // AuthorizedManifest
    authorizedManifest: ...,
  } satisfies PublishManifestRequest;

  try {
    const data = await api.publishManifest(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **authorizedManifest** | [AuthorizedManifest](AuthorizedManifest.md) |  | |

### Return type

[**PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Published |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## publishName

> PublishResponse publishName(publishRequest)

Publish a name reveal to DHT

Requires Publish or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { PublishNameRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // PublishRequest
    publishRequest: ...,
  } satisfies PublishNameRequest;

  try {
    const data = await api.publishName(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **publishRequest** | [PublishRequest](PublishRequest.md) |  | |

### Return type

[**PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Published |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## publishZone

> publishZone(name)

Cryptographically sign and publish local zone to DHT

Requires Publish or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { PublishZoneRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // string
    name: name_example,
  } satisfies PublishZoneRequest;

  try {
    const data = await api.publishZone(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` |  | [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Published |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## saveZone

> saveZone(name, dnsZone)

Save local DNS zone file

Requires Publish or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { SaveZoneRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // string
    name: name_example,
    // DnsZone
    dnsZone: ...,
  } satisfies SaveZoneRequest;

  try {
    const data = await api.saveZone(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` |  | [Defaults to `undefined`] |
| **dnsZone** | [DnsZone](DnsZone.md) |  | |

### Return type

`void` (Empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Saved |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## syncAtlas

> PublishResponse syncAtlas()

Trigger a synchronization of the foreign TLD bridge

Requires Atlas or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { SyncAtlasRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  try {
    const data = await api.syncAtlas();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sync triggered |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateConfig

> updateConfig(updateConfigRequest)

Update config

Requires Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { UpdateConfigOperationRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // UpdateConfigRequest
    updateConfigRequest: ...,
  } satisfies UpdateConfigOperationRequest;

  try {
    const data = await api.updateConfig(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **updateConfigRequest** | [UpdateConfigRequest](UpdateConfigRequest.md) |  | |

### Return type

`void` (Empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Config Updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## vdfRegister

> VdfRegister200Response vdfRegister(vdfRegisterRequest)

Start VDF name registration task

Requires VDF or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { VdfRegisterOperationRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // VdfRegisterRequest
    vdfRegisterRequest: ...,
  } satisfies VdfRegisterOperationRequest;

  try {
    const data = await api.vdfRegister(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **vdfRegisterRequest** | [VdfRegisterRequest](VdfRegisterRequest.md) |  | |

### Return type

[**VdfRegister200Response**](VdfRegister200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Task started |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## vdfRenew

> VdfRegister200Response vdfRenew(nameRenewRequest)

Start VDF name renewal task

Requires VDF or Admin role.

### Example

```ts
import {
  Configuration,
  PrivateApi,
} from 'kinetic-sdk';
import type { VdfRenewRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new PrivateApi(config);

  const body = {
    // NameRenewRequest
    nameRenewRequest: ...,
  } satisfies VdfRenewRequest;

  try {
    const data = await api.vdfRenew(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **nameRenewRequest** | [NameRenewRequest](NameRenewRequest.md) |  | |

### Return type

[**VdfRegister200Response**](VdfRegister200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Task started |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

