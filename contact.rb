class Contact
 
  attr_reader :name, :email

  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email
  end
 
  def to_s
    # TODO: return string representation of Contact
    "Name: #{@name}, Email: #{@email}"
  end
 
  ## Class Methods
  class << self
    attr_reader :contact_array

    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts #can make local variable
      Contact.new(name, email)
      index = ContactDatabase.read.size + 1
      contact_array = [index, name, email]
      ContactDatabase.add_contact(contact_array)
    end
 
    def find(term)
      # TODO: Will find and return contacts that contain the term in the first name, last name or email
      ContactDatabase.read.find{ |e| /term/ =~ e }
    end

    def all
      # TODO: Return the list of contacts, as is
      ContactDatabase.read
     
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
      ContactDatabase.read[id]
    end   
  end 
end



