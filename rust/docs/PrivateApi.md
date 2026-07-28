# \PrivateApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_post**](PrivateApi.md#commit_post) | **POST** /commit | Commit a name hash to DHT
[**config_get**](PrivateApi.md#config_get) | **GET** /config | Get config
[**config_post**](PrivateApi.md#config_post) | **POST** /config | Update config
[**gossip_publish_topic_post**](PrivateApi.md#gossip_publish_topic_post) | **POST** /gossip/publish/{topic} | Broadcast a payload to a Gossipsub topic
[**internal_atlas_sync_post**](PrivateApi.md#internal_atlas_sync_post) | **POST** /internal/atlas/sync | Trigger a synchronization of the foreign TLD bridge
[**owned_names_get**](PrivateApi.md#owned_names_get) | **GET** /owned-names | Get list of locally owned names
[**publish_governance_post**](PrivateApi.md#publish_governance_post) | **POST** /publish-governance | Publish a Governance action to DHT
[**publish_kid_post**](PrivateApi.md#publish_kid_post) | **POST** /publish-kid | Publish a KID to DHT
[**publish_manifest_post**](PrivateApi.md#publish_manifest_post) | **POST** /publish-manifest | Publish a Capability Manifest to DHT
[**publish_post**](PrivateApi.md#publish_post) | **POST** /publish | Publish a name reveal to DHT
[**vdf_register_post**](PrivateApi.md#vdf_register_post) | **POST** /vdf/register | Start VDF name registration task
[**vdf_renew_post**](PrivateApi.md#vdf_renew_post) | **POST** /vdf/renew | Start VDF name renewal task
[**vdf_status_task_id_delete**](PrivateApi.md#vdf_status_task_id_delete) | **DELETE** /vdf/status/{task_id} | Delete a VDF task from memory
[**vdf_status_task_id_get**](PrivateApi.md#vdf_status_task_id_get) | **GET** /vdf/status/{task_id} | Get status of a VDF task
[**zone_name_post**](PrivateApi.md#zone_name_post) | **POST** /zone/{name} | Save local DNS zone file
[**zone_name_publish_post**](PrivateApi.md#zone_name_publish_post) | **POST** /zone/{name}/publish | Cryptographically sign and publish local zone to DHT



## commit_post

> models::PublishResponse commit_post(commit_request)
Commit a name hash to DHT

Requires Publish or Admin role.

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


## config_get

> config_get()
Get config

Requires Admin role.

### Parameters

This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## config_post

> config_post(config_post_request)
Update config

Requires Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**config_post_request** | [**ConfigPostRequest**](ConfigPostRequest.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gossip_publish_topic_post

> models::PublishResponse gossip_publish_topic_post(topic, body)
Broadcast a payload to a Gossipsub topic

Requires Publish or Admin role.

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


## internal_atlas_sync_post

> models::PublishResponse internal_atlas_sync_post()
Trigger a synchronization of the foreign TLD bridge

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


## owned_names_get

> Vec<String> owned_names_get()
Get list of locally owned names

Requires Publish or Admin role.

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


## publish_governance_post

> models::PublishResponse publish_governance_post(body)
Publish a Governance action to DHT

Requires Governance or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**body** | **serde_json::Value** |  | [required] |

### Return type

[**models::PublishResponse**](PublishResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## publish_kid_post

> models::PublishResponse publish_kid_post(authorized_kid)
Publish a KID to DHT

Requires Publish or Admin role.

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


## publish_manifest_post

> models::PublishResponse publish_manifest_post(authorized_manifest)
Publish a Capability Manifest to DHT

Requires Publish or Admin role.

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


## publish_post

> models::PublishResponse publish_post(publish_request)
Publish a name reveal to DHT

Requires Publish or Admin role.

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


## vdf_register_post

> models::VdfRegisterPost200Response vdf_register_post(vdf_register_request)
Start VDF name registration task

Requires VDF or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**vdf_register_request** | [**VdfRegisterRequest**](VdfRegisterRequest.md) |  | [required] |

### Return type

[**models::VdfRegisterPost200Response**](_vdf_register_post_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## vdf_renew_post

> models::VdfRegisterPost200Response vdf_renew_post(name_renew_request)
Start VDF name renewal task

Requires VDF or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name_renew_request** | [**NameRenewRequest**](NameRenewRequest.md) |  | [required] |

### Return type

[**models::VdfRegisterPost200Response**](_vdf_register_post_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## vdf_status_task_id_delete

> models::VdfStatusTaskIdDelete200Response vdf_status_task_id_delete(task_id)
Delete a VDF task from memory

Requires VDF or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**task_id** | **String** |  | [required] |

### Return type

[**models::VdfStatusTaskIdDelete200Response**](_vdf_status__task_id__delete_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## vdf_status_task_id_get

> models::VdfTaskStatus vdf_status_task_id_get(task_id)
Get status of a VDF task

Requires VDF or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**task_id** | **String** |  | [required] |

### Return type

[**models::VdfTaskStatus**](VdfTaskStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## zone_name_post

> zone_name_post(name, dns_zone)
Save local DNS zone file

Requires Publish or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**dns_zone** | [**DnsZone**](DnsZone.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## zone_name_publish_post

> zone_name_publish_post(name)
Cryptographically sign and publish local zone to DHT

Requires Publish or Admin role.

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

