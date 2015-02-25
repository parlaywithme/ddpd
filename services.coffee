@services = [
  name: 'Bitcoin price'
  description: "Coinbase's latest buy and sell prices"
  ddp: 'ddp+sockjs://ddp--3545-btc-price.meteor.com/sockjs'
  subscription: 'btc-price'
  collection: 'bitcoin'
  format: """
{
  buy: {
    updated: Wed Feb 25 2015 00:18:23 GMT-0800 (PST),
    usd: '238.56'
  },
  sell: {
    updated: Wed Feb 25 2015 00:18:23 GMT-0800 (PST),
    usd: '238.11'
  }
}
          """
  repo: 'https://github.com/parlaywithme/btc-price-ddp'
]
