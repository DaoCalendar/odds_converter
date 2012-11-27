# OddsConverter

This is a vry small library that will convert Fractional Odds to Decimal Odds and Decimal Odds to Fractional Odds.
## Installation

Add this line to your application's Gemfile:

    gem 'OddsConverter', git: "git://github.com/rudedoc/odds_converter.git"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install OddsConverter

## Usage

Include the gem in a project.
OddsConvter.convert("1/1") # => 2.0
OddsConvert.convert(2.00) # => "1/1"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
