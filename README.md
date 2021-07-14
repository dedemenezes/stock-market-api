# Stock Market API
Tech challenge practice. First RESTful API built from scratch by me.

## Table of contents
* [Overview](#overview)
* [Authentication](#authentication)
* [Workflow](#workflow)
* [Any time test](#any-time-test)
* [Reference](#reference)

## Overview
The idea here is to practice how to build a RESTful API. A pretty simple one. 

Without login you can check an existing bearer any time.

For all other actions, you need an [account](#authentication).

All requests as `application/json`.

Base URL: `https://stock--api.herokuapp.com/`

## Authentication 
You need a client account to access this API. Inside te body of your resquest you need to provide email and password.
We will respond with an authentication token.

Our authenticity token is generated by [simple_token_authentication](https://github.com/gonzalo-bulnes/simple_token_authentication).

## Workflow
First, you need to create a [client](#create-client) account. We then will provide you an authentication token. Use your client account to create a [bearer](#create-bearer) for you. Now, you can check [all stocks](#check-stocks) that we have. If you want to create a stock:
1. Create a [market price](#create-market-price).
2. Create your stock
You can also check a [specific stock](#check-stock), [change](#edit-stock) your stock name and [remove](#delete-stock) it from the list.

## Any time test
#### Check bearer

```console
curl -s http://stock--api.herokuapp.com/api/v1/bearers/1
```

## Reference
#### Create client
```console
curl -i -X POST \
  -H 'Content-Type: application/json' \
  -d '{ "user": { "email": "<YOU@EMAIL>", "password": "<YOUR_PASSWORD" } }' \
  https://stock--api.herokuapp.com/api/v1/clients
```
Use your token to create a [bearer](#bearer). Only bearers can CRUD stocks.

#### Create bearer
```console
curl -i -X POST \
  -H 'Content-Type: application/json' \
  -H 'X-User-Email: <YOU@EMAIL>' \
  -H 'X-User-Token: <YOUR_TOKEN>' \
  -d '{ "name": "<BEARER_NAME>" }' \
  https://stock--api.herokuapp.com/api/v1/bearers
```

#### Check bearer
```console
curl -s http://stock--api.herokuapp.com/api/v1/bearers/1
```

#### Check stocks
```console
curl -i -X GET \
  -H 'Content-Type: application/json' \
  -H 'X-User-Email: <YOU@EMAIL>' \
  -H 'X-User-Token: <YOUR_TOKEN>' \
  https://stock--api.herokuapp.com/api/v1/stocks/
```

#### Create market price
```console
curl -i -X POST \
  -H 'Content-Type: application/json' \
  -H 'X-User-Email: <YOU@EMAIL>' \
  -H 'X-User-Token: <YOUR_TOKEN>' \
  -d '{ "value_cents": "<INTEGER>", "currency": "<STRING>" }' \
  https://stock--api.herokuapp.com/api/v1/market_prices
```

#### Create stock
```console
curl -i -X POST \
  -H 'Content-Type: application/json' \
  -H 'X-User-Email: <YOU@EMAIL>' \
  -H 'X-User-Token: <YOUR_TOKEN>' \
  -d '{ "name": "<STOCK_NAME", "market_price_id": "<ID>", "bearer_id": "<YOUR_BEARER_ID>" }' \
  https://stock--api.herokuapp.com/api/v1/stocks
```

#### Edit stock
```console
curl -i -X PUT \
  -H 'Content-Type: application/json' \
  -H 'X-User-Email: <YOU@EMAIL>' \
  -H 'X-User-Token: <YOUR_TOKEN>' \
  -d '{ "name": "<NEW_STOCK_NAME>", "market_price_id": "1", "bearer_id": "1" }' \
  https://stock--api.herokuapp.com/api/v1/stock/:stock_id
```

#### Delete stock
```console
curl -i -X DELETE \
  -H 'Content-Type: application/json' \
  -H 'X-User-Email: <YOU@EMAIL>' \
  -H 'X-User-Token: <YOUR_TOKEN>' \
  -d '{ "bearer_id": "<YOUR_BEARER_ID>"}' \
  https://stock--api.herokuapp.com/api/v1/stock/:stock_id
```

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
