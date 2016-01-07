require_relative '../models/address_book'
require 'csv'

RSpec.describe AddressBook do 
   let(:book) { AddressBook.new }

  def check_entry(entry, expected_name, expected_number, expected_email)
    expect(entry.name).to eq expected_name
    expect(entry.phone_number).to eq expected_number
    expect(entry.email).to eq expected_email
  end

  describe "#iterative_search" do
    it "searches for non-existent entries" do
      book.import_from_csv("entries.csv")
      entry = book.iterative_search("Dan")
      expect(entry).to be_nil
     end
    it "searches AddressBook for Bob" do
        book.import_from_csv("entries.csv") 
        entry = book.iterative_search("Bill")
        expect(entry).to be_a Entry
        check_entry(entry, "Bill","555-555-4854", "bill@blocmail.com")
    end
  end
  describe "#iterative_search" do
    it "searches for non-existent entries" do
      book.import_from_csv("entries.csv")
      entry = book.iterative_search("Dan")
      expect(entry).to be_nil
    end
    it "searches AddressBook for Bill" do
      book.import_from_csv("entries.csv")
      entry = book.iterative_search("Bill")
      expect(entry).to be_a Entry
      check_entry(entry, "Bill", "555-555-4854", "bill@blocmail.com")
    end
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