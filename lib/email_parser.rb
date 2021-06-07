require 'pry'

class EmailAddressParser
  
  attr_accessor :email_addresses
  
  def initialize(email)
    @email_addresses = email 
    @email_addresses
  end 
  
  def parse
    @email_addresses.split(/, | /).uniq
  end 
  
end 
