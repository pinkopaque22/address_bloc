require_relative 'entry'
require "csv"

 class AddressBook
   attr_accessor :entries

   def initialize
     @entries = []
   end
   
   def add_entry(name, phone_number, email)

     index = 0
     @entries.each do |entry|

       if name < entry.name
         break
       end
       index += 1
     end

     @entries.insert(index, Entry.new(name, phone_number, email))
   end
   def import_from_csv(file_name)
   end
    
    
     @entries.size(index, Entry.new(name, phone_number, email))
 end
   def remove_entry(name, phone_number, email)
    @name = name
    @phone_number = phone_number
    @email = email
   end

