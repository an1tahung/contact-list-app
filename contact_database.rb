## TODO: Implement CSV reading/writing
require 'csv'


# def find(number)
#   puts @contacts[number]
# end

# find(1)


  # def self.listto_a.map {|row| row.to_hash }
  #   contacts = CSV.read('contacts.csv')
  #   contacts.each_with_index.map do |contact, i|
  #     contact = Contact.new 
  #     end
  #   end


class ContactDatabase

  CSV::Converters[:blank_id] = lambda do |field|
  field && field.empty? ? csv : field
  end


  def self.add_contact(contact_array) #headers: true makes the first line the header!
    CSV.open('contacts.csv', "ab", headers: true, header_converters: :symbol, converters: [:all, :blank_id]) do |csv|
      csv << contact_array #appends new contact to the list! 
    end
  end

  def self.read
    CSV.foreach('contacts.csv', headers: true) do |row|
      puts row
    end
  end

  def self.find 
    csv = CSV.new('contacts.csv', headers: true, header_converters: :symbol, converters: :all)
    csv.to_a.map {|row| row.to_hash }
  end



end












