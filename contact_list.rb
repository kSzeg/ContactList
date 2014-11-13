require_relative 'contact_database'
require_relative 'contact'

HELP_STRING = "Here is a list of available commands:
\t new - create a new contact.
\tlist - list all contacts
\tshow - show a contact
\tfind - find a contact"


p ContactDatabase.new('touch_contact.csv')

def new_contact
	print "Enter contact's name: "
	name = $stdin.gets.chomp
	print "Enter contact's number: "
	phone_number = $stdin.gets.chomp
	Contact.create(name, email, phone_number)
end

case ARGV[0]
	
	when "help"
		puts HELP_STRING
	when "new"
	print "Enter contact's email: "
	email = $stdin.gets.chomp
		new_contact
	when "list"
		Contact.all.each do |id,contact|
			puts "#{id}: #{contact}"
		end
	when "search"
		contacts = Contact.search(ARGV[1])
		contacts.each do |id, contact|
			puts "#{id}: #{contact}"
		end
	when "find"
		Contact.find(ARGV[0].to_i)
		if contact.nil?
			puts "Unable"

end

