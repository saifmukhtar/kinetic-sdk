# \PublicApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gossip_subscribe_topic_get**](PublicApi.md#gossip_subscribe_topic_get) | **GET** /gossip/subscribe/{topic} | Subscribe to a Gossipsub topic via Server-Sent Events (SSE)
[**governance_get**](PublicApi.md#governance_get) | **GET** /governance | Get current governance state
[**health_get**](PublicApi.md#health_get) | **GET** /health | Get daemon health status
[**network_status_get**](PublicApi.md#network_status_get) | **GET** /network-status | Get network status
[**peer_id_get**](PublicApi.md#peer_id_get) | **GET** /peer_id | Get local peer ID
[**resolve_kid_did_get**](PublicApi.md#resolve_kid_did_get) | **GET** /resolve-kid/{did} | Resolve a KID
[**resolve_name_get**](PublicApi.md#resolve_name_get) | **GET** /resolve/{name} | Resolve a Kinetic name
[**time_get**](PublicApi.md#time_get) | **GET** /time | Get verified Kinetic network time
[**zone_name_get**](PublicApi.md#zone_name_get) | **GET** /zone/{name} | Get local DNS zone file



## gossip_subscribe_topic_get

> String gossip_subscribe_topic_get(topic)
Subscribe to a Gossipsub topic via Server-Sent Events (SSE)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**topic** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## governance_get

> std::path::PathBuf governance_get()
Get current governance state

### Parameters

This endpoint does not need any parameter.

### Return type

[**std::path::PathBuf**](std::path::PathBuf.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## health_get

> serde_json::Value health_get()
Get daemon health status

### Parameters

This endpoint does not need any parameter.

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## network_status_get

> serde_json::Value network_status_get()
Get network status

### Parameters

This endpoint does not need any parameter.

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## peer_id_get

> String peer_id_get()
Get local peer ID

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resolve_kid_did_get

> models::ResolveKidDidGet200Response resolve_kid_did_get(did)
Resolve a KID

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**did** | **String** |  | [required] |

### Return type

[**models::ResolveKidDidGet200Response**](_resolve_kid__did__get_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resolve_name_get

> models::Reveal resolve_name_get(name)
Resolve a Kinetic name

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::Reveal**](Reveal.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## time_get

> serde_json::Value time_get()
Get verified Kinetic network time

### Parameters

This endpoint does not need any parameter.

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## zone_name_get

> models::DnsZone zone_name_get(name)
Get local DNS zone file

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::DnsZone**](DnsZone.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

