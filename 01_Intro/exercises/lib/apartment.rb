require 'pry' ##create separate file for "apartment" class
require_relative ('renter')

class Apartment

  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :tenant, :rent ##establish "Getter and "Setter" methods by using attr accessor

  def initialize(name, sqft, bedrooms, bathrooms) ##create an apartment class initializer; ##could set @renter & @rent as nil here but they are not required
    @name = name ##assigns information from above to instance variables of the same name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenant = nil ##we don't require those, thus nil because we don't want them required; when you don't need a collection the default is nil
    @rent = nil  ##we don't require those, thus nil because we don't want them required; when you don't need a collection the default is nil
  ##if you want to define them as part of the class, you can't ignore this
  end


  def to_s
    "Unit #{name} is #{sqft}."##this method is inherited out of the box when you create a new class. Can override and define it myself
  end

  def not_occupied?
    tenant.nil? ##also renter.nil?, renter == nil, self.renter == nil, @renter == nil
  end

  def print_tenant_info
      if not_occupied?
        puts "This unit is vacant. \n"
      else
        puts "#{tenant} \n"
      end
    end

    def self.apartment_creator(num)
      apt_array = []
      num.times do |num|
        unit_number = num + 1
        sqft = Random.rand(900...2400)
        bedrooms = Random.rand(1...4)
        bathrooms = Random.rand(1...3)
        apt = Apartment.new(unit_number, sqft, bedrooms, bathrooms)
        apt_array.push(apt)
      end
      apt_array
    end


end
