# \KidApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_kid**](KidApi.md#fetch_kid) | **GET** /api/v1/micro/kid/{name} | Fetch details of a specific KID [Public]
[**fetch_kid_manifest**](KidApi.md#fetch_kid_manifest) | **GET** /api/v1/micro/kid/{name}/manifest | Fetch the local manifest for a specific KID [Public]
[**generate_kid**](KidApi.md#generate_kid) | **POST** /api/v1/micro/kid/generate | Generate a new KID [Private]
[**generate_kid_manifest**](KidApi.md#generate_kid_manifest) | **POST** /api/v1/micro/kid/{name}/manifest | Generate and sign a capability manifest for a KID [Private]
[**list_kids**](KidApi.md#list_kids) | **GET** /api/v1/micro/kid/list | List all public identifiers for KIDs [Public]
[**publish_kid**](KidApi.md#publish_kid) | **POST** /api/v1/micro/kid/publish | Publish a KID to DHT [Private]
[**publish_manifest**](KidApi.md#publish_manifest) | **POST** /api/v1/micro/kid/manifest/publish | Publish a Capability Manifest to DHT [Private]
[**resolve_kid**](KidApi.md#resolve_kid) | **GET** /api/v1/micro/kid/resolve/{did} | Resolve a KID [Public]
[**revoke_kid**](KidApi.md#revoke_kid) | **POST** /api/v1/micro/kid/{name}/revoke | Revoke a given KID [Private]
[**rotate_kid**](KidApi.md#rotate_kid) | **POST** /api/v1/micro/kid/{name}/rotate | Rotate the keys for a given KID [Private]



## fetch_kid

> models::AuthorizedKid fetch_kid(name)
Fetch details of a specific KID [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::AuthorizedKid**](AuthorizedKid.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## fetch_kid_manifest

> models::AuthorizedManifest fetch_kid_manifest(name)
Fetch the local manifest for a specific KID [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::AuthorizedManifest**](AuthorizedManifest.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generate_kid

> models::PublishResponse generate_kid(generate_kid_request)
Generate a new KID [Private]

Requires Kid or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**generate_kid_request** | [**GenerateKidRequest**](GenerateKidRequest.md) |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generate_kid_manifest

> models::PublishResponse generate_kid_manifest(name, body)
Generate and sign a capability manifest for a KID [Private]

Requires Kid or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**body** | **serde_json::Value** |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_kids

> Vec<String> list_kids()
List all public identifiers for KIDs [Public]

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


## publish_kid

> models::PublishResponse publish_kid(authorized_kid)
Publish a KID to DHT [Private]

Requires Kid or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**authorized_kid** | [**AuthorizedKid**](AuthorizedKid.md) |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## publish_manifest

> models::PublishResponse publish_manifest(authorized_manifest)
Publish a Capability Manifest to DHT [Private]

Requires Kid or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**authorized_manifest** | [**AuthorizedManifest**](AuthorizedManifest.md) |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resolve_kid

> models::ResolveKid200Response resolve_kid(did)
Resolve a KID [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**did** | **String** |  | [required] |

### Return type

[**models::ResolveKid200Response**](resolveKid_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## revoke_kid

> models::PublishResponse revoke_kid(name)
Revoke a given KID [Private]

Requires Kid or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rotate_kid

> models::PublishResponse rotate_kid(name)
Rotate the keys for a given KID [Private]

Requires Kid or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

