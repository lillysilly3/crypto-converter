# Cryptocurrency Converter

A command-line cryptocurrency converter built in Ruby. Convert BTC, ETH, XRP, DASH and LTC to USD or EUR using live prices from the CryptoCompare API.

## Features

- Convert cryptocurrency amounts to USD or EUR
- Live prices fetched from CryptoCompare API
- Supports decimal amounts (e.g. 0.5 BTC)
- Graceful error handling for network failures

## Demo

```
########## Cryptocurrency Converter ##########
a) Convert to USD
b) Convert to EUR
q) Quit
Action: a

-----------Available Coins-----------
BTC, ETH, XRP, DASH, LTC
Coin: BTC
Amount: 0.5
--------------------------------------------------
            0.5 BTC = 31245.75 USD
--------------------------------------------------
```

## Getting Started

**Requirements:** Ruby 2.7+

```bash
git clone https://github.com/YOUR_USERNAME/cryptocurrency_converter
cd cryptocurrency_converter
ruby main.rb
```

## Project Structure

- `main.rb` - Entry point and menu loop
- `manager.rb` - Business logic and API fetching
- `coin.rb` - Coin model

## What I Learned

- Fetching and parsing live API data with `net/http` and `json`
- Object-oriented Ruby design with classes
- Error handling for network and API failures
- Separating concerns across model and manager layers

## Acknowledgments

This project was built following the [Ruby tutorial by Best Tutorials](https://www.youtube.com/watch?v=MXlZCgh2M6A) on YouTube.
