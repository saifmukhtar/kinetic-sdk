# \AuthApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_session**](AuthApi.md#create_session) | **POST** /api/v1/micro/auth/session | Create a new persistent session token for an application [Private]
[**list_sessions**](AuthApi.md#list_sessions) | **GET** /api/v1/micro/auth/sessions | List all active application session tokens [Private]
[**revoke_session**](AuthApi.md#revoke_session) | **DELETE** /api/v1/micro/auth/session/{id} | Revoke an application session token using its ID [Private]



## create_session

> models::CreateSession200Response create_session(create_session_request)
Create a new persistent session token for an application [Private]

Requires Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_session_request** | [**CreateSessionRequest**](CreateSessionRequest.md) |  | [required] |

### Return type

[**models::CreateSession200Response**](createSession_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_sessions

> models::ListSessionsResponse list_sessions()
List all active application session tokens [Private]

Requires Admin role.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::ListSessionsResponse**](ListSessionsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## revoke_session

> models::PublishResponse revoke_session(id)
Revoke an application session token using its ID [Private]

Requires Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

