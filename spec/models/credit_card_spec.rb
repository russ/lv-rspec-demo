require 'spec_helper'

describe CreditCard do
  describe "validations" do
    it "should require :first_name"
    it "should require :last_name"
    it "should require :number"
    it "should require :expiration_month"
    it "should require :expiration_year"
    it "should require :cvv"
    it "should not validate invalid card numbers"
    it "should validate valid card numbers"
  end
end
