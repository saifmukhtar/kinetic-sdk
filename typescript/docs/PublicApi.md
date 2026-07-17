# PublicApi

All URIs are relative to *http://127.0.0.1:16002/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**networkStatusGet**](PublicApi.md#networkstatusget) | **GET** /network-status | Get network status |
| [**resolveKidDidGet**](PublicApi.md#resolvekiddidget) | **GET** /resolve-kid/{did} | Resolve a KID |
| [**resolveNameGet**](PublicApi.md#resolvenameget) | **GET** /resolve/{name} | Resolve a Kinetic name |
| [**zoneNameGet**](PublicApi.md#zonenameget) | **GET** /zone/{name} | Get local DNS zone file |



## networkStatusGet

> object networkStatusGet()

Get network status

### Example

```ts
import {
  Configuration,
  PublicApi,
} from '';
import type { NetworkStatusGetRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new PublicApi();

  try {
    const data = await api.networkStatusGet();
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

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Network status object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## resolveKidDidGet

> ResolveKidDidGet200Response resolveKidDidGet(did)

Resolve a KID

### Example

```ts
import {
  Configuration,
  PublicApi,
} from '';
import type { ResolveKidDidGetRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new PublicApi();

  const body = {
    // string
    did: did_example,
  } satisfies ResolveKidDidGetRequest;

  try {
    const data = await api.resolveKidDidGet(body);
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
| **did** | `string` |  | [Defaults to `undefined`] |

### Return type

[**ResolveKidDidGet200Response**](ResolveKidDidGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Found KID and Manifest |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## resolveNameGet

> Reveal resolveNameGet(name)

Resolve a Kinetic name

### Example

```ts
import {
  Configuration,
  PublicApi,
} from '';
import type { ResolveNameGetRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new PublicApi();

  const body = {
    // string
    name: name_example,
  } satisfies ResolveNameGetRequest;

  try {
    const data = await api.resolveNameGet(body);
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

[**Reveal**](Reveal.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Found Reveal |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## zoneNameGet

> DnsZone zoneNameGet(name)

Get local DNS zone file

### Example

```ts
import {
  Configuration,
  PublicApi,
} from '';
import type { ZoneNameGetRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new PublicApi();

  const body = {
    // string
    name: name_example,
  } satisfies ZoneNameGetRequest;

  try {
    const data = await api.zoneNameGet(body);
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

[**DnsZone**](DnsZone.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Found Zone |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

