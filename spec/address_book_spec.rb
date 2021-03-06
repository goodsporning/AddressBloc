require_relative '../models/address_book'


RSpec.describe AddressBook do
   let(:book) { AddressBook.new }

   # #6
   def check_entry(entry, expected_name, expected_number, expected_email)
     expect(entry.name).to eq expected_name
     expect(entry.phone_number).to eq expected_number
     expect(entry.email).to eq expected_email
   end
 
   describe "attributes" do
        it "responds to entries" do
            expect(book).to respond_to(:entries)
            book.import_from_csv("entries.csv")
            entry_one = book.entries[0]
            check_entry(entry_one, "Bill", "555-555-4854", "bill@blocmail.com")     
        end

        it "imports the 2nd entry" do
           book.import_from_csv("entries.csv")
           entry_two = book.entries[1]
           check_entry(entry_two, "Bob", "555-555-5415", "bob@blocmail.com")
        end
     
        it "imports the 3rd entry" do
           book.import_from_csv("entries.csv")  
           entry_three = book.entries[2]
           check_entry(entry_three, "Joe", "555-555-3660", "joe@blocmail.com")
        end
     
        it "imports the 4th entry" do
           book.import_from_csv("entries.csv")
           entry_four = book.entries[3]
           check_entry(entry_four, "Sally", "555-555-4646", "sally@blocmail.com")
        end
     
        it "imports the 5th entry" do
           book.import_from_csv("entries.csv")
           entry_five = book.entries[4]
           check_entry(entry_five, "Sussie", "555-555-2036", "sussie@blocmail.com")
    
     end
   end
 end