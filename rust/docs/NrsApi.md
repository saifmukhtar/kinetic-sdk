# \NrsApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_name**](NrsApi.md#commit_name) | **POST** /api/v1/micro/nrs/record/commit | Commit a name hash to DHT [Private]
[**delete_local_reserved_zone**](NrsApi.md#delete_local_reserved_zone) | **DELETE** /api/v1/micro/nrs/zone/local/{name} | Delete local NRS override for a reserved name [Private]
[**get_local_reserved_zone**](NrsApi.md#get_local_reserved_zone) | **GET** /api/v1/micro/nrs/zone/local/{name} | Get local NRS override for a reserved name [Public]
[**get_owned_names**](NrsApi.md#get_owned_names) | **GET** /api/v1/micro/nrs/owned | Get list of locally owned names [Private]
[**get_reserved_names**](NrsApi.md#get_reserved_names) | **GET** /api/v1/micro/nrs/names/reserved | Get the list of all reserved names for the current network [Public]
[**get_zone**](NrsApi.md#get_zone) | **GET** /api/v1/micro/nrs/zone/{name} | Get local NRS zone file [Public]
[**post_nrs_update**](NrsApi.md#post_nrs_update) | **POST** /api/v1/micro/nrs/nrs-update/{name} | Publish a Fat NRS Zone Update using a delegated hot key [Private]
[**publish_name**](NrsApi.md#publish_name) | **POST** /api/v1/micro/nrs/record/publish | Publish a name reveal to DHT [Private]
[**publish_zone**](NrsApi.md#publish_zone) | **POST** /api/v1/micro/nrs/zone/{name}/publish | Cryptographically sign and publish local zone to DHT [Private]
[**resolve_name**](NrsApi.md#resolve_name) | **GET** /api/v1/micro/nrs/resolve/{name} | Resolve a Kinetic name [Public]
[**save_local_reserved_zone**](NrsApi.md#save_local_reserved_zone) | **POST** /api/v1/micro/nrs/zone/local/{name} | Save local NRS override for a reserved name [Private]
[**save_zone**](NrsApi.md#save_zone) | **POST** /api/v1/micro/nrs/zone/{name} | Save local NRS zone file [Private]
[**validate_name**](NrsApi.md#validate_name) | **POST** /api/v1/micro/nrs/validate | Validates domain syntax, LDH rules, and reserved categories [Public]
[**verify_quorum**](NrsApi.md#verify_quorum) | **POST** /api/v1/micro/nrs/resolve/{name}/quorum | Verify how many nodes in the DHT have replicated a specific payload [Public]



## commit_name

> models::PublishResponse commit_name(commit_request)
Commit a name hash to DHT [Private]

Requires Nrs or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**commit_request** | [**CommitRequest**](CommitRequest.md) |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_local_reserved_zone

> delete_local_reserved_zone(name)
Delete local NRS override for a reserved name [Private]

Requires Nrs or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_local_reserved_zone

> models::NrsZone get_local_reserved_zone(name)
Get local NRS override for a reserved name [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::NrsZone**](NrsZone.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_owned_names

> Vec<String> get_owned_names()
Get list of locally owned names [Private]

Requires Nrs or Admin role.

### Parameters

This endpoint does not need any parameter.

### Return type

**Vec<String>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_reserved_names

> Vec<models::GetReservedNames200ResponseInner> get_reserved_names()
Get the list of all reserved names for the current network [Public]

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<models::GetReservedNames200ResponseInner>**](getReservedNames_200_response_inner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_zone

> models::NrsZone get_zone(name)
Get local NRS zone file [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::NrsZone**](NrsZone.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_nrs_update

> models::PublishResponse post_nrs_update(name, post_nrs_update_request)
Publish a Fat NRS Zone Update using a delegated hot key [Private]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**post_nrs_update_request** | [**PostNrsUpdateRequest**](PostNrsUpdateRequest.md) |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## publish_name

> models::PublishResponse publish_name(publish_request)
Publish a name reveal to DHT [Private]

Requires Nrs or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**publish_request** | [**PublishRequest**](PublishRequest.md) |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## publish_zone

> publish_zone(name)
Cryptographically sign and publish local zone to DHT [Private]

Requires Nrs or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resolve_name

> models::Reveal resolve_name(name)
Resolve a Kinetic name [Public]

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


## save_local_reserved_zone

> save_local_reserved_zone(name, nrs_zone)
Save local NRS override for a reserved name [Private]

Requires Nrs or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**nrs_zone** | [**NrsZone**](NrsZone.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## save_zone

> save_zone(name, nrs_zone)
Save local NRS zone file [Private]

Requires Nrs or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**nrs_zone** | [**NrsZone**](NrsZone.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## validate_name

> models::ValidateName200Response validate_name(validate_name_request)
Validates domain syntax, LDH rules, and reserved categories [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**validate_name_request** | [**ValidateNameRequest**](ValidateNameRequest.md) |  | [required] |

### Return type

[**models::ValidateName200Response**](validateName_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## verify_quorum

> models::VerifyQuorum200Response verify_quorum(name, body)
Verify how many nodes in the DHT have replicated a specific payload [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**body** | **serde_json::Value** |  | [required] |

### Return type

[**models::VerifyQuorum200Response**](verifyQuorum_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

