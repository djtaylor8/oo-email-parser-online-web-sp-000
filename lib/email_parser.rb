require 'pry'

class EmailAddressParser
  
  attr_accessor :email_addresses
  
  def initialize(email)
    @email_addresses = email 
    @email_addresses
  end 
  
  def parse
    split_emails = @email_addresses.split(/[\s,]/).reject!{|e| e == ""}
    split_emails.uniq
    binding.pry 
  end 
  
end 
