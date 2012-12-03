require "OddsConverter/version"
require 'yaml'

$LOAD_PATH << File.join(File.dirname(__FILE__), '..')


module OddsConverter
  @odds_list = {"odds_to_decimal"=>{"1/10"=>1.1, "1/9"=>1.11, "1/8"=>1.12, "1/7"=>1.14, "1/6"=>1.17, "1/5"=>1.2, "2/9"=>1.22, "1/4"=>1.25, "2/7"=>1.29, "3/10"=>1.3, "1/3"=>1.33, "4/11"=>1.36, "2/5"=>1.4, "4/9"=>1.44, "1/2"=>1.5, "8/15"=>1.53, "4/7"=>1.57, "8/13"=>1.62, "4/6"=>1.67, "8/11"=>1.73, "4/5"=>1.8, "5/6"=>1.83, "10/11"=>1.91, "1/1"=>2.0, "11/10"=>2.1, "6/5"=>2.2, "5/4"=>2.25, "11/8"=>2.38, "6/4"=>2.5, "13/8"=>2.63, "7/4"=>2.75, "9/5"=>2.8, "15/8"=>2.86, "2/1"=>3.0, "85/40"=>3.12, "11/5"=>3.2, "9/4"=>3.25, "12/5"=>3.4, "5/2"=>3.5, "13/5"=>3.6, "11/4"=>3.75, "3/1"=>4.0, "10/3"=>4.33, "7/2"=>4.5, "4/1"=>5.0, "9/2"=>5.5, "5/1"=>6.0, "11/2"=>6.5, "6/1"=>7.0, "13/2"=>7.5, "7/1"=>8.0, "15/2"=>8.5, "8/1"=>9.0, "17/2"=>9.5, "9/1"=>10.0, "10/1"=>11.0, "11/1"=>12.0, "12/1"=>13.0, "14/1"=>15.0, "15/1"=>16.0, "16/1"=>17.0, "18/1"=>19.0, "20/1"=>21.0, "25/1"=>26.0, "33/1"=>34.0, "40/1"=>41.0, "50/1"=>51.0, "66/1"=>67.0, "100/1"=>101.0}}

  puts @odds_list

  # Dangerous chance of infinite loop

  def self.convert(price)
    if price.kind_of? Float
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
