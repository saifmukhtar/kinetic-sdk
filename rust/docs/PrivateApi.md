# \PrivateApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_name**](PrivateApi.md#commit_name) | **POST** /commit | Commit a name hash to DHT
[**delete_vdf_task**](PrivateApi.md#delete_vdf_task) | **DELETE** /vdf/status/{task_id} | Delete a VDF task from memory
[**get_config**](PrivateApi.md#get_config) | **GET** /config | Get config
[**get_owned_names**](PrivateApi.md#get_owned_names) | **GET** /owned-names | Get list of locally owned names
[**get_vdf_status**](PrivateApi.md#get_vdf_status) | **GET** /vdf/status/{task_id} | Get status of a VDF task
[**gossip_publish**](PrivateApi.md#gossip_publish) | **POST** /gossip/publish/{topic} | Broadcast a payload to a Gossipsub topic
[**publish_governance**](PrivateApi.md#publish_governance) | **POST** /publish-governance | Publish a Governance action to DHT
[**publish_kid**](PrivateApi.md#publish_kid) | **POST** /publish-kid | Publish a KID to DHT
[**publish_manifest**](PrivateApi.md#publish_manifest) | **POST** /publish-manifest | Publish a Capability Manifest to DHT
[**publish_name**](PrivateApi.md#publish_name) | **POST** /publish | Publish a name reveal to DHT
[**publish_zone**](PrivateApi.md#publish_zone) | **POST** /zone/{name}/publish | Cryptographically sign and publish local zone to DHT
[**save_zone**](PrivateApi.md#save_zone) | **POST** /zone/{name} | Save local DNS zone file
[**sync_atlas**](PrivateApi.md#sync_atlas) | **POST** /internal/atlas/sync | Trigger a synchronization of the foreign TLD bridge
[**update_config**](PrivateApi.md#update_config) | **POST** /config | Update config
[**vdf_register**](PrivateApi.md#vdf_register) | **POST** /vdf/register | Start VDF name registration task
[**vdf_renew**](PrivateApi.md#vdf_renew) | **POST** /vdf/renew | Start VDF name renewal task



## commit_name

> models::PublishResponse commit_name(commit_request)
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


## delete_vdf_task

> models::DeleteVdfTask200Response delete_vdf_task(task_id)
Delete a VDF task from memory

Requires VDF or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**task_id** | **String** |  | [required] |

### Return type

[**models::DeleteVdfTask200Response**](deleteVdfTask_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_config

> get_config()
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


## get_owned_names

> Vec<String> get_owned_names()
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


## get_vdf_status

> models::VdfTaskStatus get_vdf_status(task_id)
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


## gossip_publish

> models::PublishResponse gossip_publish(topic, body)
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


## publish_governance

> models::PublishResponse publish_governance(body)
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


## publish_kid

> models::PublishResponse publish_kid(authorized_kid)
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


## publish_manifest

> models::PublishResponse publish_manifest(authorized_manifest)
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


## publish_name

> models::PublishResponse publish_name(publish_request)
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


## publish_zone

> publish_zone(name)
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


## save_zone

> save_zone(name, dns_zone)
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


## sync_atlas

> models::PublishResponse sync_atlas()
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


## update_config

> update_config(update_config_request)
Update config

Requires Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_config_request** | [**UpdateConfigRequest**](UpdateConfigRequest.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## vdf_register

> models::VdfRegister200Response vdf_register(vdf_register_request)
Start VDF name registration task

Requires VDF or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**vdf_register_request** | [**VdfRegisterRequest**](VdfRegisterRequest.md) |  | [required] |

### Return type

[**models::VdfRegister200Response**](vdfRegister_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## vdf_renew

> models::VdfRegister200Response vdf_renew(name_renew_request)
Start VDF name renewal task

Requires VDF or Admin role.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name_renew_request** | [**NameRenewRequest**](NameRenewRequest.md) |  | [required] |

### Return type

[**models::VdfRegister200Response**](vdfRegister_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

