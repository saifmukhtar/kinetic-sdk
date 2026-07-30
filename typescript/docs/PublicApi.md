# PublicApi

All URIs are relative to *http://127.0.0.1:16002/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**gossipSubscribeTopicGet**](PublicApi.md#gossipsubscribetopicget) | **GET** /gossip/subscribe/{topic} | Subscribe to a Gossipsub topic via Server-Sent Events (SSE) |
| [**governanceGet**](PublicApi.md#governanceget) | **GET** /governance | Get current governance state |
| [**healthGet**](PublicApi.md#healthget) | **GET** /health | Get daemon health status |
| [**networkStatusGet**](PublicApi.md#networkstatusget) | **GET** /network-status | Get network status |
| [**peerIdGet**](PublicApi.md#peeridget) | **GET** /peer_id | Get local peer ID |
| [**resolveKidDidGet**](PublicApi.md#resolvekiddidget) | **GET** /resolve-kid/{did} | Resolve a KID |
| [**resolveNameGet**](PublicApi.md#resolvenameget) | **GET** /resolve/{name} | Resolve a Kinetic name |
| [**timeGet**](PublicApi.md#timeget) | **GET** /time | Get verified Kinetic network time |
| [**zoneNameGet**](PublicApi.md#zonenameget) | **GET** /zone/{name} | Get local DNS zone file |



## gossipSubscribeTopicGet

> string gossipSubscribeTopicGet(topic)

Subscribe to a Gossipsub topic via Server-Sent Events (SSE)

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GossipSubscribeTopicGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  const body = {
    // string
    topic: topic_example,
  } satisfies GossipSubscribeTopicGetRequest;

  try {
    const data = await api.gossipSubscribeTopicGet(body);
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


## governanceGet

> Blob governanceGet()

Get current governance state

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { GovernanceGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.governanceGet();
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


## healthGet

> object healthGet()

Get daemon health status

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { HealthGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.healthGet();
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


## networkStatusGet

> object networkStatusGet()

Get network status

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { NetworkStatusGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
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


## peerIdGet

> string peerIdGet()

Get local peer ID

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { PeerIdGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.peerIdGet();
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


## resolveKidDidGet

> ResolveKidDidGet200Response resolveKidDidGet(did)

Resolve a KID

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { ResolveKidDidGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
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
} from 'kinetic-sdk';
import type { ResolveNameGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
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


## timeGet

> object timeGet()

Get verified Kinetic network time

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { TimeGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
  const api = new PublicApi();

  try {
    const data = await api.timeGet();
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


## zoneNameGet

> DnsZone zoneNameGet(name)

Get local DNS zone file

### Example

```ts
import {
  Configuration,
  PublicApi,
} from 'kinetic-sdk';
import type { ZoneNameGetRequest } from 'kinetic-sdk';

async function example() {
  console.log("🚀 Testing kinetic-sdk SDK...");
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

