require 'csv'

class ContactDatabase
	attr_accessor :parsed_csv
	def initialize(db_path)
		@db_path = db_path
		@parsed_csv = CSV.open("touch_contact.csv)"
		convert_to_data
	end
		
		def convert_to_contacts
			@contacts = Hash.new
			@parsed_csv.each_with_index do |id, row|
				@contacts[id] = Contact.new(row[0], row[1])
		end

		def add_contact(contact)
			@contacts[@contacts.keys.max +1] = contact
		end

		def write
			db = Array.new
			@contactseach do |contact|
				db << contact.to_a
			end

			File.open('touch_contact.csv', 'w') do |file|
				file.write(db.to_csv)
			end
		end
end

$database = ContactDatabase.new