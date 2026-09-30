# \SystemApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ca_cert**](SystemApi.md#get_ca_cert) | **GET** /api/v1/micro/system/ca-cert | Download the root CA certificate for local MITM proxy interception [Private]
[**get_config**](SystemApi.md#get_config) | **GET** /api/v1/micro/config | Retrieve the active node configuration [Private]
[**get_health**](SystemApi.md#get_health) | **GET** /api/v1/micro/health | Health check endpoint [Public]
[**get_time**](SystemApi.md#get_time) | **GET** /api/v1/micro/time/current | Get verified Kinetic network time [Public]
[**post_dns_flush**](SystemApi.md#post_dns_flush) | **POST** /api/v1/micro/config/dns/flush | Flushes the in-memory DNS resolution cache [Private]
[**sync_atlas**](SystemApi.md#sync_atlas) | **POST** /api/v1/micro/atlas/sync | Trigger a synchronization of the foreign NSP bridge [Private]
[**system_restart**](SystemApi.md#system_restart) | **POST** /api/v1/micro/system/restart | Restart the Kinetic daemon [Private]
[**system_shutdown**](SystemApi.md#system_shutdown) | **POST** /api/v1/micro/system/shutdown | Gracefully shut down the Kinetic daemon [Private]
[**update_config**](SystemApi.md#update_config) | **POST** /api/v1/micro/config | Update config [Private]



## get_ca_cert

> String get_ca_cert()
Download the root CA certificate for local MITM proxy interception [Private]

Requires System or Admin role.

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/x-x509-ca-cert

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_config

> serde_json::Value get_config()
Retrieve the active node configuration [Private]

Requires Nrs or Admin role.

### Parameters

This endpoint does not need any parameter.

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_health

> String get_health()
Health check endpoint [Public]

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


## get_time

> serde_json::Value get_time()
Get verified Kinetic network time [Public]

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


## post_dns_flush

> models::PostDnsFlush200Response post_dns_flush()
Flushes the in-memory DNS resolution cache [Private]

Requires System or Admin role.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::PostDnsFlush200Response**](postDnsFlush_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sync_atlas

> models::PublishResponse sync_atlas()
Trigger a synchronization of the foreign NSP bridge [Private]

Requires Atlas or Admin role.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## system_restart

> models::PublishResponse system_restart()
Restart the Kinetic daemon [Private]

Requires System or Admin role. Attempts to restart via native service manager.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## system_shutdown

> models::PublishResponse system_shutdown()
Gracefully shut down the Kinetic daemon [Private]

Requires System or Admin role. Safely flushes the database and stops the node.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_config

> update_config(body)
Update config [Private]

Requires System or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**body** | **serde_json::Value** |  | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

