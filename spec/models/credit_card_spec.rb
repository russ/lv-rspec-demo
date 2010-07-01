require 'spec_helper'

describe CreditCard do
  before(:each) do
    @credit_card = credit_card
  end

  describe "validations" do
    it "should require :first_name" do
      @credit_card.first_name = ''
      @credit_card.valid?.should == false
    end

    it "should require :last_name" do
      @credit_card.last_name = ''
      @credit_card.valid?.should == false
    end

    it "should require :number" do
      @credit_card.number = ''
      @credit_card.valid?.should == false
    end

    it "should require :expiration_month" do
      @credit_card.expiration_month = ''
      @credit_card.valid?.should == false
    end

    it "should require :expiration_year" do
      @credit_card.expiration_year = ''
      @credit_card.valid?.should == false
    end

    it "should require :cvv" do
      @credit_card.cvv = ''
      @credit_card.valid?.should == false
    end

    it "should not validate invalid card numbers" do
      @credit_card.number = ''
      @credit_card.valid?.should == false

      @credit_card.number = '41111111111ff'
      @credit_card.valid?.should == false
    end

    it "should validate valid card numbers" do
      @credit_card.number = '4111111111111111'
      @credit_card.valid?.should == true
    end
  end

  def credit_card(overrides = {})
    CreditCard.new({ :first_name => 'Longbob',
      :last_name => 'Thompson',
      :number => '4111111111111111',
      :expiration_month => 1,
      :expiration_year => 2020,
      :cvv => 477 }.merge(overrides))
  end
end
