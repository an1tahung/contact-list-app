require_relative 'contact_database'

class Contact
 
  attr_accessor :name, :email

  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email
    # @@contactlist =[]
    # @contact_id += 1

  end
 
  def to_s
    # TODO: return string representation of Contact
    "Name: #{@name}, Email: #{@email}, Contact ID: #{@contact_id}"

  end
 
  ## Class Methods
  class << self
    attr_reader :contact_array

    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      Contact.new(name, email)
      index = ContactDatabase.read.size + 1
      @contact_array = [index, name, email]
      ContactDatabase.add_contact(@contact_array)
  
  
    end
 
    def find(term)
      # TODO: Will find and return contacts that contain the term in the first name, last name or email
      ContactDatabase.find
    end
 
    def all
      # TODO: Return the list of contacts, as is
      ContactDatabase.read 
     
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
    end

    def email_in_database?
    end
    
  end
 
end


