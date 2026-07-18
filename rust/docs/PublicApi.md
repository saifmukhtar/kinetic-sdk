# \PublicApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**network_status_get**](PublicApi.md#network_status_get) | **GET** /network-status | Get network status
[**resolve_kid_did_get**](PublicApi.md#resolve_kid_did_get) | **GET** /resolve-kid/{did} | Resolve a KID
[**resolve_name_get**](PublicApi.md#resolve_name_get) | **GET** /resolve/{name} | Resolve a Kinetic name
[**zone_name_get**](PublicApi.md#zone_name_get) | **GET** /zone/{name} | Get local DNS zone file



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

