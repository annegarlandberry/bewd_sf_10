require 'pry'

class Building ##creates new class
  attr_accessor :address, :apartments, :bldg_name

  def initialize (address, bldg_name) ##does not require apartments right now because apartment is class to be created and thus empty array
    @address = address
    @apartment = [] ##empty array
    @bldg_name = name
  end
end

def to_s ##what does this actually do and why is this important?
  "#{name} at #{address} has #{apartments.count} apartments" ##test to see if this was created by building.new; type "building" in pry
end

end  ##test by trying Building.new
