# \VdfApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_vdf_task**](VdfApi.md#delete_vdf_task) | **DELETE** /api/v1/macro/status/{task_id} | Delete a VDF task from memory [Private]
[**get_takeover_iterations**](VdfApi.md#get_takeover_iterations) | **GET** /api/v1/micro/vdf/takeover-iterations/{name} | Calculates decay multiplier for taking over idle names [Public]
[**get_vdf_iterations**](VdfApi.md#get_vdf_iterations) | **GET** /api/v1/micro/vdf/iterations/{name} | Pre-flight calculation of VDF time for new names [Public]
[**get_vdf_status**](VdfApi.md#get_vdf_status) | **GET** /api/v1/macro/status/{task_id} | Get status of a VDF task [Private]
[**get_vdf_tasks**](VdfApi.md#get_vdf_tasks) | **GET** /api/v1/macro/tasks | Retrieve all active and completed background VDF tasks [Private]
[**vdf_register**](VdfApi.md#vdf_register) | **POST** /api/v1/macro/register | Start VDF name registration task [Private]
[**vdf_renew**](VdfApi.md#vdf_renew) | **POST** /api/v1/macro/renew | Start VDF name renewal task [Private]



## delete_vdf_task

> models::DeleteVdfTask200Response delete_vdf_task(task_id)
Delete a VDF task from memory [Private]

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


## get_takeover_iterations

> models::GetTakeoverIterations200Response get_takeover_iterations(name, kyns_idle)
Calculates decay multiplier for taking over idle names [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**kyns_idle** | **i32** |  | [required] |

### Return type

[**models::GetTakeoverIterations200Response**](getTakeoverIterations_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_vdf_iterations

> models::GetVdfIterations200Response get_vdf_iterations(name)
Pre-flight calculation of VDF time for new names [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::GetVdfIterations200Response**](getVdfIterations_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_vdf_status

> models::VdfTaskStatus get_vdf_status(task_id)
Get status of a VDF task [Private]

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


## get_vdf_tasks

> std::collections::HashMap<String, models::GetVdfTasks200ResponseValue> get_vdf_tasks()
Retrieve all active and completed background VDF tasks [Private]

### Parameters

This endpoint does not need any parameter.

### Return type

[**std::collections::HashMap<String, models::GetVdfTasks200ResponseValue>**](getVdfTasks_200_response_value.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## vdf_register

> models::VdfRegister200Response vdf_register(vdf_register_request)
Start VDF name registration task [Private]

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
Start VDF name renewal task [Private]

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

