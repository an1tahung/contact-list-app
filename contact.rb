require_relative 'contact_database'

class Contact
 
  attr_accessor :name, :email

  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email
    @@contactlist =[]

  end
 
  def to_s
    # TODO: return string representation of Contact

  end
 
  ## Class Methods
  class << self
    attr_reader :contact_array

    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      Contact.new(name, email)
      @contact_array = [name, email]
      ContactDatabase.add_contact(@contact_array)
      @@contactlist << name && email 
  
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
    
  end
 
end


