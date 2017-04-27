require "contacts"
require "rspec"
require "pry"

describe(Contacts) do
  # before() do
  #   Contacts.clear
  # end


  describe('#initialize') do
    it('returns the first name of a new instance of the Contacts') do
      new_contact = Contacts.new('Nick', 'Powell', 'Student')
      expect(new_contact.first_name).to(eq('Nick'))
      end

    it('returns the first name of a new instance of the Contacts') do
      new_contact = Contacts.new('Nick', 'Powell', 'Student')
      expect(new_contact.last_name).to(eq('Powell'))
      end

    it('returns the first name of a new instance of the Contacts') do
      new_contact = Contacts.new('Nick', 'Powell', 'Student')
      expect(new_contact.job_title).to(eq('Student'))
      end
    end

    describe('.all') do
      it('returns all stored contacts in the all_contacts array') do
        new_contact = Contacts.new('Nick', 'Powell', 'Student')
        expect(Contacts.all).to(eq([]))
        end
    end

end
