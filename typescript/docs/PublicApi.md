# PublicApi

All URIs are relative to *http://127.0.0.1:16002/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getGovernance**](PublicApi.md#getgovernance) | **GET** /governance | Get current governance state |
| [**getHealth**](PublicApi.md#gethealth) | **GET** /health | Get daemon health status |
| [**getNetworkStatus**](PublicApi.md#getnetworkstatus) | **GET** /network-status | Get network status |
| [**getPeerId**](PublicApi.md#getpeerid) | **GET** /peer_id | Get local peer ID |
| [**getTime**](PublicApi.md#gettime) | **GET** /time | Get verified Kinetic network time |
| [**getZone**](PublicApi.md#getzone) | **GET** /zone/{name} | Get local DNS zone file |
| [**gossipSubscribe**](PublicApi.md#gossipsubscribe) | **GET** /gossip/subscribe/{topic} | Subscribe to a Gossipsub topic via Server-Sent Events (SSE) |
| [**resolveKid**](PublicApi.md#resolvekid) | **GET** /resolve-kid/{did} | Resolve a KID |
| [**resolveName**](PublicApi.md#resolvename) | **GET** /resolve/{name} | Resolve a Kinetic name |



## getGovernance

> Blob getGovernance()

Get current governance state

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GetGovernanceRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.getGovernance();
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

**Blob**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/octet-stream`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Governance state binary data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getHealth

> object getHealth()

Get daemon health status

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GetHealthRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.getHealth();
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
| **200** | Health status object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getNetworkStatus

> object getNetworkStatus()

Get network status

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GetNetworkStatusRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.getNetworkStatus();
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


## getPeerId

> string getPeerId()

Get local peer ID

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GetPeerIdRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.getPeerId();
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

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Peer ID string |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getTime

> object getTime()

Get verified Kinetic network time

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GetTimeRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.getTime();
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
| **200** | Kinetic time object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getZone

> DnsZone getZone(name)

Get local DNS zone file

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GetZoneRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  const body = {
    // string
    name: name_example,
  } satisfies GetZoneRequest;

  try {
    const data = await api.getZone(body);
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


## gossipSubscribe

> string gossipSubscribe(topic)

Subscribe to a Gossipsub topic via Server-Sent Events (SSE)

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GossipSubscribeRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  const body = {
    // string
    topic: topic_example,
  } satisfies GossipSubscribeRequest;

  try {
    const data = await api.gossipSubscribe(body);
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

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/event-stream`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SSE Stream |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## resolveKid

> ResolveKid200Response resolveKid(did)

Resolve a KID

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { ResolveKidRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  const body = {
    // string
    did: did_example,
  } satisfies ResolveKidRequest;

  try {
    const data = await api.resolveKid(body);
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

[**ResolveKid200Response**](ResolveKid200Response.md)

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


## resolveName

> Reveal resolveName(name)

Resolve a Kinetic name

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { ResolveNameRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  const body = {
    // string
    name: name_example,
  } satisfies ResolveNameRequest;

  try {
    const data = await api.resolveName(body);
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

