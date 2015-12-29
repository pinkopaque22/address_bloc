require_relative '../models/entry'
 
 RSpec.describe Entry do
 end
 
 describe "attributes" do
     it "should respond to name" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
       expect(entry).to respond_to(:name)
     end

     it "should respond to phone_number" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
       expect(entry).to respond_to(:phone_number)
     end

     it "should respond to email" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
       expect(entry).to respond_to(:email)
     end
     describe "#to_s" do
     it "prints an entry as a string" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"

       expect(entry.to_s).to eq(expected_string)
     end
     RSpec.describe AddressBook do  
   describe "attributes" do
     it "should respond to entries" do
       book = AddressBook.new
       expect(book).to respond_to(:entries)
     end

     it "should initialize entries as an array" do
       book = AddressBook.new
       expect(book.entries).to be_a(Array)
     end

     it "should initialize entries as empty" do
       book = AddressBook.new
       expect(book.entries.size).to eq(0)
     end
   end

   describe "#add_entry" do
     it "adds only one entry to the address book" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
 
       expect(book.entries.size).to eq(1)
     end
 
     it "adds the correct information to entries" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       new_entry = book.entries[0]
 
       expect(new_entry.name).to eq('Ada Lovelace')
       expect(new_entry.phone_number).to eq('010.012.1815')
       expect(new_entry.email).to eq('augusta.king@lovelace.com')
     end
     
     describe "#remove_entry" do
      it "should remove_entry name from address book" do
          book = Entry.new
          book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
          expect(remove_entry).to respond_to(:name)
          expect(book.entries.size).to eq(1)
      end 
      it "should remove_entry phone_number from address book" do
          book = Entry.new
          book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
          expect(remove_entry).to respond_to(:phone_number)
          expect(book.entries.size).to eq(1)
      end
      it "should remove_entry email from address book" do
          book = Entry.new
          book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
          expect(remove_entry).to respond_to(:email)
          expect(book.entries.size).to eq(1)
      end 
    end

 
 
 
 
 
 