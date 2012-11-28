require "OddsConverter/version"
require 'yaml'

module OddsConverter
  @odds_list = YAML::load(File.open('odds_list.yml'))

  # Dangerous chance of infinite loop

  def self.convert(price)
    if price.kind_of? Float
      price.to_f.round(2)
      result = @odds_list["odds_to_decimal"].key(price)
    elsif price.kind_of? String
      result = @odds_list["odds_to_decimal"][price]
    end
     if result.nil?
       result = find_nearest_price(price)
     end
    result
  end

  def self.find_nearest_price(price)
    nearest =  @odds_list["odds_to_decimal"].values.min {|a,b| (a-price).abs <=> (b-price).abs}
    convert(nearest)
  end



end
