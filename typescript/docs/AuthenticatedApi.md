# AuthenticatedApi

All URIs are relative to *http://127.0.0.1:16002/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**commitPost**](AuthenticatedApi.md#commitpost) | **POST** /commit | Commit a name hash to DHT |
| [**configGet**](AuthenticatedApi.md#configget) | **GET** /config | Get config |
| [**configPost**](AuthenticatedApi.md#configpostoperation) | **POST** /config | Update config |
| [**ownedNamesGet**](AuthenticatedApi.md#ownednamesget) | **GET** /owned-names | Get list of locally owned names |
| [**publishKidPost**](AuthenticatedApi.md#publishkidpost) | **POST** /publish-kid | Publish a KID to DHT |
| [**publishManifestPost**](AuthenticatedApi.md#publishmanifestpost) | **POST** /publish-manifest | Publish a Capability Manifest to DHT |
| [**publishPost**](AuthenticatedApi.md#publishpost) | **POST** /publish | Publish a name reveal to DHT |
| [**vdfRegisterPost**](AuthenticatedApi.md#vdfregisterpost) | **POST** /vdf/register | Start VDF name registration task |
| [**vdfRenewPost**](AuthenticatedApi.md#vdfrenewpost) | **POST** /vdf/renew | Start VDF name renewal task |
| [**vdfStatusTaskIdDelete**](AuthenticatedApi.md#vdfstatustaskiddelete) | **DELETE** /vdf/status/{task_id} | Delete a VDF task from memory |
| [**vdfStatusTaskIdGet**](AuthenticatedApi.md#vdfstatustaskidget) | **GET** /vdf/status/{task_id} | Get status of a VDF task |
| [**zoneNamePost**](AuthenticatedApi.md#zonenamepost) | **POST** /zone/{name} | Save local DNS zone file |
| [**zoneNamePublishPost**](AuthenticatedApi.md#zonenamepublishpost) | **POST** /zone/{name}/publish | Cryptographically sign and publish local zone to DHT |



## commitPost

> PublishResponse commitPost(commitRequest)

Commit a name hash to DHT

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { CommitPostRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

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


## configGet

> configGet()

Get config

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { ConfigGetRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  try {
    const data = await api.configGet();
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


## configPost

> configPost(configPostRequest)

Update config

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { ConfigPostOperationRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // ConfigPostRequest
    configPostRequest: ...,
  } satisfies ConfigPostOperationRequest;

  try {
    const data = await api.configPost(body);
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
| **configPostRequest** | [ConfigPostRequest](ConfigPostRequest.md) |  | |

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


## ownedNamesGet

> Array&lt;string&gt; ownedNamesGet()

Get list of locally owned names

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { OwnedNamesGetRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  try {
    const data = await api.ownedNamesGet();
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


## publishKidPost

> PublishResponse publishKidPost(authorizedKid)

Publish a KID to DHT

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { PublishKidPostRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // AuthorizedKid
    authorizedKid: ...,
  } satisfies PublishKidPostRequest;

  try {
    const data = await api.publishKidPost(body);
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


## publishManifestPost

> PublishResponse publishManifestPost(authorizedManifest)

Publish a Capability Manifest to DHT

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { PublishManifestPostRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // AuthorizedManifest
    authorizedManifest: ...,
  } satisfies PublishManifestPostRequest;

  try {
    const data = await api.publishManifestPost(body);
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


## publishPost

> PublishResponse publishPost(publishRequest)

Publish a name reveal to DHT

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { PublishPostRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // PublishRequest
    publishRequest: ...,
  } satisfies PublishPostRequest;

  try {
    const data = await api.publishPost(body);
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


## vdfRegisterPost

> VdfRegisterPost200Response vdfRegisterPost(vdfRegisterRequest)

Start VDF name registration task

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { VdfRegisterPostRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // VdfRegisterRequest
    vdfRegisterRequest: ...,
  } satisfies VdfRegisterPostRequest;

  try {
    const data = await api.vdfRegisterPost(body);
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

[**VdfRegisterPost200Response**](VdfRegisterPost200Response.md)

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


## vdfRenewPost

> VdfRegisterPost200Response vdfRenewPost(nameRenewRequest)

Start VDF name renewal task

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { VdfRenewPostRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // NameRenewRequest
    nameRenewRequest: ...,
  } satisfies VdfRenewPostRequest;

  try {
    const data = await api.vdfRenewPost(body);
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

[**VdfRegisterPost200Response**](VdfRegisterPost200Response.md)

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


## vdfStatusTaskIdDelete

> VdfStatusTaskIdDelete200Response vdfStatusTaskIdDelete(taskId)

Delete a VDF task from memory

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { VdfStatusTaskIdDeleteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // string
    taskId: taskId_example,
  } satisfies VdfStatusTaskIdDeleteRequest;

  try {
    const data = await api.vdfStatusTaskIdDelete(body);
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

[**VdfStatusTaskIdDelete200Response**](VdfStatusTaskIdDelete200Response.md)

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


## vdfStatusTaskIdGet

> VdfTaskStatus vdfStatusTaskIdGet(taskId)

Get status of a VDF task

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { VdfStatusTaskIdGetRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // string
    taskId: taskId_example,
  } satisfies VdfStatusTaskIdGetRequest;

  try {
    const data = await api.vdfStatusTaskIdGet(body);
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


## zoneNamePost

> zoneNamePost(name, dnsZone)

Save local DNS zone file

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { ZoneNamePostRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // string
    name: name_example,
    // DnsZone
    dnsZone: ...,
  } satisfies ZoneNamePostRequest;

  try {
    const data = await api.zoneNamePost(body);
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


## zoneNamePublishPost

> zoneNamePublishPost(name)

Cryptographically sign and publish local zone to DHT

### Example

```ts
import {
  Configuration,
  AuthenticatedApi,
} from '';
import type { ZoneNamePublishPostRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AuthenticatedApi(config);

  const body = {
    // string
    name: name_example,
  } satisfies ZoneNamePublishPostRequest;

  try {
    const data = await api.zoneNamePublishPost(body);
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

