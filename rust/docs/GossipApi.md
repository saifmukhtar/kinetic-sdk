# \GossipApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_gossip_topics**](GossipApi.md#get_gossip_topics) | **GET** /api/v1/micro/gossip/topics | Retrieve a list of active Gossipsub topics [Public]
[**gossip_publish**](GossipApi.md#gossip_publish) | **POST** /api/v1/micro/gossip/publish/{topic} | Broadcast a payload to a Gossipsub topic [Private]
[**gossip_subscribe**](GossipApi.md#gossip_subscribe) | **GET** /api/v1/micro/gossip/subscribe/{topic} | Subscribe to a Gossipsub topic via Server-Sent Events (SSE) [Public]



## get_gossip_topics

> Vec<String> get_gossip_topics()
Retrieve a list of active Gossipsub topics [Public]

### Parameters

This endpoint does not need any parameter.

### Return type

**Vec<String>**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gossip_publish

> models::PublishResponse gossip_publish(topic, body)
Broadcast a payload to a Gossipsub topic [Private]

Requires Gossip or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**topic** | **String** |  | [required] |
**body** | **serde_json::Value** |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gossip_subscribe

> String gossip_subscribe(topic)
Subscribe to a Gossipsub topic via Server-Sent Events (SSE) [Public]

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

