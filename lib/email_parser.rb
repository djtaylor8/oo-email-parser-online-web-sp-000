require 'pry'

class EmailAddressParser
  
  attr_accessor :email_addresses
  
  def initialize(email)
    @email_addresses = email 
    @email_addresses
  end 
  
  def parse
    split_emails = @email_addresses.split(/[\s,]/).reject!{|e| e == ""}
    strip_emails = split_emails.compact.collect{:&strip}
    strip_emails.uniq
  end 
  
end 
