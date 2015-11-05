require_relative 'contact'
# require_relative 'contact_database'

# TODO: Implement command line interaction
# This should be the only file where you use puts and gets

# ARGV << '--help'

case ARGV[0]
when "help"
  puts "Here is a list of available commands:
    new - Create a new contact
    list - List all contacts 
    show - Show a contact
    find - Find a contact
    add - Add phone number(s) to existing contact"

when "new"
  puts "What is the email?"
  @email = STDIN.gets.chomp
  puts "What is the name"
  @name = STDIN.gets.chomp
  Contact.create(@name,@email)

when "list"
  puts Contact.all 

when "show"
id = ARGV[1].to_i
puts ContactDatabase.read[id - 1]

end


