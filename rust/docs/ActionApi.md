# \ActionApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_action_status**](ActionApi.md#get_action_status) | **GET** /api/v1/micro/action/status | Retrieves human-readable JSON of network action state, halts, and rules [Public]
[**publish_action**](ActionApi.md#publish_action) | **POST** /api/v1/micro/action/publish | Broadcast a signed network action (action proposal) [Public]



## get_action_status

> models::GetActionStatus200Response get_action_status()
Retrieves human-readable JSON of network action state, halts, and rules [Public]

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::GetActionStatus200Response**](getActionStatus_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## publish_action

> String publish_action(body)
Broadcast a signed network action (action proposal) [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**body** | **serde_json::Value** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

