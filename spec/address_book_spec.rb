require_relative '../models/address_book'
require 'csv'
RSpec.describe AddressBook do 
 let(:book) {AddressBook.new}

  def check_entry(entry, expected_name, expected_number, expected_email)
    expect(entry.name).to eq expected_name
    expect(entry.phone_number).to eq expected_number
    expect(entry.email).to eq expected_email
  end
    describe "#destroy" do
     it "destroys all entries" do
      book.add_entry("Dan", "555-555-6500", "Dan@dan.com")
      book.add_entry("Nia", "555-555-0514", "Nia@nia.com")
      book.add_entry("Patricia", "555-555-0607", "Patricia@patricia.com")
      
      book.destroy
      expect(book.entries.size).to eq 0
     end
    end
    describe "#binary_search" do
     it "searches AddressBook for a non-existent entry" do
       book.import_from_csv("entries.csv")
       entry = book.binary_search("Dan")
       expect(entry).to be_nil
     end
     it "searches AddressBook for Bill" do
       book.import_from_csv("entries.csv")
       entry = book.binary_search("Bill")
       expect(entry).to be_a Entry
       check_entry(entry, "Bill", "555-555-4854", "bill@blocmail.com")
     end
     it "searches AddressBook for Billy" do
       book.import_from_csv("entries.csv")
       entry = book.binary_search("Billy")
       expect(entry).to be_nil
     end  
    describe "#import_from_csv" do
     it "imports the correct number of entries" do
       book.import_from_csv("entries.csv")
       book_size = book.entries.size
       expect(book_size).to eq 5
     end
     it "imports the 1st entry" do
       book.import_from_csv("entries.csv")
       entry_one = book.entries[0]
       check_entry(entry_one, "Bill", "555-555-4854", "bill@blocmail.com")
     end
     

  end
 end
end