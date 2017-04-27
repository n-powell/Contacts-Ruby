require "contacts"
require "rspec"
require "pry"

describe(Contacts) do
  # before() do
  #   Contacts.clear
  # end
  # describe('#initialize') do
  #   it('returns the first name of a new instance of the Contacts') do
  #     new_contact = Contacts.new('Nick', 'Powell', 'Student')
  #     expect(new_contact.first_name).to(eq('Nick'))
  #     end
  #
  #   it('returns the first name of a new instance of the Contacts') do
  #     new_contact = Contacts.new('Nick', 'Powell', 'Student')
  #     expect(new_contact.last_name).to(eq('Powell'))
  #     end
  #
  #   it('returns the first name of a new instance of the Contacts') do
  #     new_contact = Contacts.new('Nick', 'Powell', 'Student')
  #     expect(new_contact.job_title).to(eq('Student'))
  #     end
  #   end
  #
  #   describe('.all') do
  #     it('returns all stored contacts in the all_contacts array') do
  #       new_contact = Contacts.new('Nick', 'Powell', 'Student')
  #       expect(Contacts.all).to(eq([]))
  #       end
  #   end
  #
  #   describe('.all') do
  #     it('returns all stored contacts in the all_contacts array') do
  #       new_contact = Contacts.new('Nick', 'Powell', 'Student')
  #       new_contact.save
  #       expect(Contacts.all).to(eq([new_contact]))
  #       end
  #   end
  #   describe('.all') do
  #     it('clears all stored contacts in all_contacts array') do
  #       new_contact = Contacts.new('Nick', 'Powell', 'Student')
  #       new_contact.save
  #       Contacts.clear
  #       expect(Contacts.all).to(eq([]))
  #       end
  #   end
  #   describe('.all') do
  #     it('returns second stored contact in the all_contacts array') do
  #       new_contact = Contacts.new('Nick', 'Powell', 'Student')
  #       new_contact.save
  #       new_contact2 = Contacts.new('James', 'Higgins', 'Student')
  #       new_contact2.save
  #       expect(new_contact2.first_name).to(eq("James"))
  #       end
 it('returns the phone array for an instance of a new contact') do
    new_contact = Contacts.new('Nick', 'Powell', 'Student', '503')
    new_contact.save
    expect(Contacts.all).to(eq([new_contact]))
  end
 it('returns the phone array for an instance of a new contact') do
    new_contact = Contacts.new('Nick', 'Powell', 'Student', '503')
    new_contact.save
    expect(new_contact.phone.personal).to(eq("503"))
  end
end




  describe(Phone) do
    it('returns the phone array for an instance of a new contact') do
      new_contact = Contacts.new('Nick', 'Powell', 'Student', '503')
      expect(new_contact.phone.personal).to(eq("503"))
    end
    it('returns the phone array for an instance of a new contact') do
      new_contact = Contacts.new('Nick', 'Powell', 'Student', '503')
      expect(Phone.all).to(eq([]))
    end
  end


# end
