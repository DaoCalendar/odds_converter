require "OddsConverter/version"
require 'yaml'

module OddsConverter

  def self.convert(price)
    @odds_list = YAML::load(File.open('odds_list.yml'))
    if price.kind_of? Float
      price.to_f.round(2)
      result = @odds_list["odds_to_decimal"].key(price)
    elsif price.kind_of? String
      result = @odds_list["odds_to_decimal"][price]
    end

    if result == nil
      result = @odds_list["odds_to_decimal"].key(price.round(1))
    end
    result
  end



end
