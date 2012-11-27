require "OddsConverter/version"
require 'yaml'

module OddsConverter

  def self.convert(price)
    @odds_list = YAML::load(File.open('odds_list.yml'))
    if price.kind_of? Float
      price.to_f.round(2)
      return @odds_list["odds_to_decimal"].key(price)
    elsif price.kind_of? String
      return @odds_list["odds_to_decimal"][price]
    end
  end

end
