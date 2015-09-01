require 'pry'
class Tenant

  # require 'pry'
require 'faker'
require_relative('apartment')

attr_accessor :name, :credit_score, :salary

  def initialize(name, credit_score, salary)
    @name = name
    @credit_score = credit_score
    @salary = comma_numbers(salary)
  end

  def to_s
    "The tenant #{name} makes $#{salary} and has a credit score of #{credit_score}."
  end

  def self.creator(num)
    num.times do
      name = Faker::Name.name
      credit_score = Random.rand(650…860)
      salary = Random.rand(40000...1000000)
      tenant = Tenant.new(name, credit_score, salary)
      puts tenant.name
      puts tenant.credit_score
      puts tenant.salary
    end
  end

  def self.random_tenant_generator
    name = Faker::Name.name
    credit_score = Random.rand(650…860)
    salary = Random.rand(40000…1000000)
    Tenant.new(name, credit_score, salary)
  end

  def comma_numbers(number, delimiter = ',') ##extra credit method Kisha asked about in class
    number.to_s.reverse.gsub(%r{([0-9]{3}(?=([0-9])))}, "\\1#{delimiter}").reverse
  end
end
