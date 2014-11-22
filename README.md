# Mobile::Network::Info

Get up to date details about mobile network carriers

## Installation

Add this line to your application's Gemfile:

```ruby
	gem 'mobile-network-info'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mobile-network-info

## Usage

### Getting the carriers for a country

```ruby
	carriers = MobileNetworkInfo.get_carriers_by_country_code "ke"
	telco = carriers.first
	puts telco[:name]
	puts telco[:country_code]
	puts telco[:country_name]
	puts telco[:mcc]
	puts telco[:mnc]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mobile-network-info/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
