class CreditCard
  include ActiveModel::Validations

  validates_presence_of :first_name, :last_name
  validates_presence_of :number, :expiration_month, :expiration_year, :cvv
  validate :validate_number

  attr_accessor :first_name, :last_name
  attr_accessor :number, :expiration_month, :expiration_year, :cvv

  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @number = attributes[:number]
    @expiration_month = attributes[:expiration_month]
    @expiration_year = attributes[:expiration_year]
    @cvv = attributes[:cvv]
  end

private

  def validate_number
    unless valid_card_number_length?(@number) && valid_checksum?(@number)
      errors.add(:number, 'number is invalid')
    end
  end

  def valid_card_number_length?(number)
    number.to_s.length >= 12
  end 

  def valid_checksum?(number)
    sum = 0 
    for i in 0..number.length
      weight = number[-1 * (i + 2), 1].to_i * (2 - (i % 2))
      sum += (weight < 10) ? weight : weight - 9
    end

    (number[-1,1].to_i == (10 - sum % 10) % 10)
  end
end
