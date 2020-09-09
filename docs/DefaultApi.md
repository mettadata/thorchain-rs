# \DefaultApi

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_asset_info**](DefaultApi.md#get_asset_info) | **get** /v1/assets | Get Asset Information
[**get_health**](DefaultApi.md#get_health) | **get** /v1/health | Get Health
[**get_network_data**](DefaultApi.md#get_network_data) | **get** /v1/network | Get Network Data
[**get_nodes**](DefaultApi.md#get_nodes) | **get** /v1/nodes | Get Node public keys
[**get_pools**](DefaultApi.md#get_pools) | **get** /v1/pools | Get Asset Pools
[**get_pools_details**](DefaultApi.md#get_pools_details) | **get** /v1/pools/detail | Get Pools Details
[**get_stakers_address_and_asset_data**](DefaultApi.md#get_stakers_address_and_asset_data) | **get** /v1/stakers/{address}/pools | Get Staker Pool Data
[**get_stakers_address_data**](DefaultApi.md#get_stakers_address_data) | **get** /v1/stakers/{address} | Get Staker Data
[**get_stakers_data**](DefaultApi.md#get_stakers_data) | **get** /v1/stakers | Get Stakers
[**get_stats**](DefaultApi.md#get_stats) | **get** /v1/stats | Get Global Stats
[**get_thorchain_proxied_constants**](DefaultApi.md#get_thorchain_proxied_constants) | **get** /v1/thorchain/constants | Get the Proxied THORChain Constants
[**get_thorchain_proxied_endpoints**](DefaultApi.md#get_thorchain_proxied_endpoints) | **get** /v1/thorchain/pool_addresses | Get the Proxied Pool Addresses
[**get_thorchain_proxied_lastblock**](DefaultApi.md#get_thorchain_proxied_lastblock) | **get** /v1/thorchain/lastblock | Get the Proxied THORChain Lastblock
[**get_total_vol_changes**](DefaultApi.md#get_total_vol_changes) | **get** /v1/history/total_volume | Get Total Volume Changes
[**get_tx_details**](DefaultApi.md#get_tx_details) | **get** /v1/txs | Get details of a tx by address, asset or tx-id



## get_asset_info

> Vec<crate::models::AssetDetail> get_asset_info(asset)
Get Asset Information

Detailed information about a specific asset. Returns enough information to display a unique asset in various user interfaces, including latest price.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**asset** | **String** | One or more comma separated unique asset (CHAIN.SYMBOL) | [required] |

### Return type

[**Vec<crate::models::AssetDetail>**](AssetDetail.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_health

> crate::models::InlineResponse200 get_health()
Get Health

Returns an object containing the health response of the API.

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::InlineResponse200**](inline_response_200.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_network_data

> crate::models::NetworkInfo get_network_data()
Get Network Data

Returns an object containing Network data

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::NetworkInfo**](NetworkInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_nodes

> Vec<crate::models::NodeKey> get_nodes()
Get Node public keys

Returns an object containing Node public keys

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::NodeKey>**](NodeKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_pools

> Vec<String> get_pools()
Get Asset Pools

Returns an array containing all the assets supported on BEPSwap pools

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


## get_pools_details

> Vec<crate::models::PoolDetail> get_pools_details(asset, view)
Get Pools Details

Returns an object containing all the pool details for that asset.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**asset** | **String** | One or more comma separated unique asset (CHAIN.SYMBOL) | [required] |
**view** | Option<**String**> | Specifies the returning view |  |[default to full]

### Return type

[**Vec<crate::models::PoolDetail>**](PoolDetail.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_stakers_address_and_asset_data

> Vec<crate::models::StakersAssetData> get_stakers_address_and_asset_data(address, asset)
Get Staker Pool Data

Returns an object containing staking data for the specified staker and pool.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**address** | **String** | Unique staker address | [required] |
**asset** | **String** | One or more comma separated unique asset (CHAIN.SYMBOL) | [required] |

### Return type

[**Vec<crate::models::StakersAssetData>**](StakersAssetData.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_stakers_address_data

> crate::models::StakersAddressData get_stakers_address_data(address)
Get Staker Data

Returns an array containing all the pools the staker is staking in.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**address** | **String** | Unique staker address | [required] |

### Return type

[**crate::models::StakersAddressData**](StakersAddressData.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_stakers_data

> Vec<String> get_stakers_data()
Get Stakers

Returns an array containing the addresses for all stakers.

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


## get_stats

> crate::models::StatsData get_stats()
Get Global Stats

Returns an object containing global stats for all pools and all transactions.

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::StatsData**](StatsData.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_thorchain_proxied_constants

> crate::models::ThorchainConstants get_thorchain_proxied_constants()
Get the Proxied THORChain Constants

Returns a proxied endpoint for the constants endpoint from a local thornode

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::ThorchainConstants**](ThorchainConstants.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_thorchain_proxied_endpoints

> crate::models::ThorchainEndpoints get_thorchain_proxied_endpoints()
Get the Proxied Pool Addresses

Returns a proxied endpoint for the pool_addresses endpoint from a local thornode

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::ThorchainEndpoints**](ThorchainEndpoints.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_thorchain_proxied_lastblock

> crate::models::ThorchainLastblock get_thorchain_proxied_lastblock()
Get the Proxied THORChain Lastblock

Returns a proxied endpoint for the lastblock endpoint from a local thornode

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::ThorchainLastblock**](ThorchainLastblock.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_total_vol_changes

> Vec<crate::models::TotalVolChanges> get_total_vol_changes(interval, from, to)
Get Total Volume Changes

Returns total volume changes of all pools in specified interval

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**interval** | **String** | Interval of calculations | [required] |
**from** | **i64** | Start time of the query as unix timestamp | [required] |
**to** | **i64** | End time of the query as unix timestamp | [required] |

### Return type

[**Vec<crate::models::TotalVolChanges>**](TotalVolChanges.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_tx_details

> crate::models::InlineResponse2001 get_tx_details(offset, limit, address, txid, asset, _type)
Get details of a tx by address, asset or tx-id

Return an array containing the event details

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**offset** | **i64** | pagination offset | [required] |
**limit** | **i64** | pagination limit | [required] |
**address** | Option<**String**> | Address of sender or recipient of any in/out tx in event |  |
**txid** | Option<**String**> | ID of any in/out tx in event |  |
**asset** | Option<**String**> | Any asset used in event (CHAIN.SYMBOL) |  |
**_type** | Option<**String**> | One or more comma separated unique types of event |  |

### Return type

[**crate::models::InlineResponse2001**](inline_response_200_1.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

