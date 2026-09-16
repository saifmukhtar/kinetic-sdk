# \NetworkApi

All URIs are relative to *http://127.0.0.1:16002/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_banned_peers**](NetworkApi.md#get_banned_peers) | **GET** /api/v1/micro/network/peers/banned | List banned peers and strike counts [Public]
[**get_network_nat**](NetworkApi.md#get_network_nat) | **GET** /api/v1/micro/network/nat | Check if the node's port is reachable or behind a strict NAT [Public]
[**get_network_peers**](NetworkApi.md#get_network_peers) | **GET** /api/v1/micro/network/peers | Retrieve the list of connected Peer IDs [Public]
[**get_network_status**](NetworkApi.md#get_network_status) | **GET** /api/v1/micro/network/status | Get Swarm/DHT networking status [Public]
[**get_peer_id**](NetworkApi.md#get_peer_id) | **GET** /api/v1/micro/network/peer-id | Get the local node's Peer ID [Public]
[**trigger_network_bootstrap**](NetworkApi.md#trigger_network_bootstrap) | **POST** /api/v1/micro/network/bootstrap | Manually trigger a Kademlia network bootstrap [Private]



## get_banned_peers

> models::GetBannedPeers200Response get_banned_peers()
List banned peers and strike counts [Public]

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::GetBannedPeers200Response**](getBannedPeers_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_network_nat

> models::GetNetworkNat200Response get_network_nat()
Check if the node's port is reachable or behind a strict NAT [Public]

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::GetNetworkNat200Response**](getNetworkNat_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_network_peers

> Vec<String> get_network_peers()
Retrieve the list of connected Peer IDs [Public]

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


## get_network_status

> serde_json::Value get_network_status()
Get Swarm/DHT networking status [Public]

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


## get_peer_id

> String get_peer_id()
Get the local node's Peer ID [Public]

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


## trigger_network_bootstrap

> models::PublishResponse trigger_network_bootstrap()
Manually trigger a Kademlia network bootstrap [Private]

Requires System or Admin role.

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

