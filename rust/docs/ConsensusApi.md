# \ConsensusApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_consensus_difficulty**](ConsensusApi.md#get_consensus_difficulty) | **GET** /api/v1/micro/consensus/difficulty/{name} | Pre-flight calculation of VDF time for new names [Public]
[**get_takeover_difficulty**](ConsensusApi.md#get_takeover_difficulty) | **GET** /api/v1/micro/consensus/takeover-difficulty/{name} | Calculates decay multiplier for taking over idle names [Public]
[**validate_name**](ConsensusApi.md#validate_name) | **POST** /api/v1/micro/consensus/validate | Validates domain syntax, LDH rules, and reserved categories [Public]



## get_consensus_difficulty

> models::GetConsensusDifficulty200Response get_consensus_difficulty(name)
Pre-flight calculation of VDF time for new names [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |

### Return type

[**models::GetConsensusDifficulty200Response**](getConsensusDifficulty_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_takeover_difficulty

> models::GetTakeoverDifficulty200Response get_takeover_difficulty(name, kyns_idle)
Calculates decay multiplier for taking over idle names [Public]

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**kyns_idle** | **i32** |  | [required] |

### Return type

[**models::GetTakeoverDifficulty200Response**](getTakeoverDifficulty_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

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

