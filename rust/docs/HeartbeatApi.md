# \HeartbeatApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_heartbeats**](HeartbeatApi.md#get_heartbeats) | **GET** /api/v1/micro/nrs/heartbeats | Get the DHT heartbeat status of all locally owned names [Public]
[**post_fat_heartbeat**](HeartbeatApi.md#post_fat_heartbeat) | **POST** /api/v1/micro/nrs/fat-heartbeat/{name} | Broadcast a Fat Heartbeat using a delegated hot key [Private]
[**post_heartbeat**](HeartbeatApi.md#post_heartbeat) | **POST** /api/v1/micro/nrs/heartbeat/{name} | Manually broadcast a heartbeat to keep a name active [Private]



## get_heartbeats

> models::GetHeartbeats200Response get_heartbeats()
Get the DHT heartbeat status of all locally owned names [Public]

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::GetHeartbeats200Response**](getHeartbeats_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_fat_heartbeat

> serde_json::Value post_fat_heartbeat(name, post_fat_heartbeat_request)
Broadcast a Fat Heartbeat using a delegated hot key [Private]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**post_fat_heartbeat_request** | [**PostFatHeartbeatRequest**](PostFatHeartbeatRequest.md) |  | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_heartbeat

> models::PostHeartbeat200Response post_heartbeat(name)
Manually broadcast a heartbeat to keep a name active [Private]

Requires Nrs or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::PostHeartbeat200Response**](postHeartbeat_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

