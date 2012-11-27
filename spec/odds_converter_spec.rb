require 'spec_helper'

describe OddsConverter do
    it "should convert 2.00 to 1/1" do
      OddsConverter.convert(2.00).should == "1/1"
    end

    it "should convert 1/1 to 2.00" do
      OddsConverter.convert("1/1").should == 2.00
    end


end