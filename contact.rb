require_relative "contact_database"

class Contact
 
  attr_accessor :name, :email, :contact_database
 
  def initialize(name, email)
    @name = name     # assisn local variables to instance variables
    @email = email   # TODO: assign local variables to instance variables
  end
 
  def to_s
    first_name = name.split(' ')[0]
    initial = name.split(' ')[1][0]  
    "<#{first_name}> <#{initial}> <#{email}>"
  end

  def to_a
    [name, email, phone_number]
  end


    # TODO: return string representation of Contact
 #adding new data === contact_list --> touch_contact --> contact_database
 #reading data === contact_list -->touch_contact --> contact_database
 # when we get all === contact_list --> contact_database
  
  ## Class Methods
  class << self
    #this is executed when the :class is loaded
    def create(name, email, phone_number)
      @@db = ContactDatabase.new('touch_contact.csv')
      @@contacts = db.read
    end


 
    def search(term)
      # TODO: Will find and return contact by index
      $database.contacts.selct do |id, contact|
        id == term || contact.name.include?(term) ||contact.email
    end
 
    def all
      # TODO: Return the list of contacts, as is
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
    end
    
  end
 
end
