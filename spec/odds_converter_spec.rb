require 'spec_helper'

describe OddsConverter do
  it "should convert 2.00 to 1/1" do
    OddsConverter.convert(2.00).should == "1/1"
  end

  it "should convert 1/1 to 2.00" do
    OddsConverter.convert("1/1").should == 2.00
  end

  it "should convert 2/1 to 3.00" do
    OddsConverter.convert("2/1").should == 3.00
  end

  it "should convert 9/2 to 5.50" do
    OddsConverter.convert("9/2").should == 5.50
  end

  it "should convert 6.23 to 5/1" do
    OddsConverter.convert(6.23).should == "5/1"
  end

  it "should convert 6.26 to 11/2" do
    OddsConverter.convert(6.26).should == "11/2"
  end

  it "should convert 1.18 to 1/6" do
    OddsConverter.convert(1.18).should == "1/6"
  end

  it "should convert 1.19 to 1/5" do
    OddsConverter.convert(1.19).should == "1/5"
  end

  it "should convert 1.13 to 1/8" do
    OddsConverter.convert(1.13).should == "1/8"
  end
  
  it "should convert 29.0 to 28/1" do
    OddsConverter.convert(29.0).should == "28/1"
  end



end