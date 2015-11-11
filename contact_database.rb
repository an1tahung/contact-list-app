## TODO: Implement CSV reading/writing

  # def self.listto_a.map {|row| row.to_hash }
  #   contacts = CSV.read('contacts.csv')
  #   contacts.each_with_index.map do |contact, i|
  #     contact = Contact.new 
  #     end
  #   end


class ContactDatabase

  def self.add_contact(contact_array) 
    CSV.open('contacts.csv', "ab") do |csv|
      csv << contact_array #appends new contact to the list! 
    end
  end

  def self.read
    contacts = []
    CSV.foreach('contacts.csv') do |row|
       contacts << row
    end
    contacts
  end
end















