require "contacts"
require "rspec"
require "pry"

describe(Contacts) do
  before() do
    Contacts.clear
  end
  describe('#initialize') do
    it('returns the first name of a new instance of the Contacts') do
      test_phone_params = {:type => "personal", :number => "5037730029"}
      test_email_params = {:type => "work", :email => "test@gmail.com"}
      new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
      expect(new_contact.first_name).to(eq('Nick'))
      end

    it('returns the first name of a new instance of the Contacts') do
      test_phone_params = {:type => "personal", :number => "5037730029"}
      test_email_params = {:type => "work", :email => "test@gmail.com"}
      new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
      expect(new_contact.last_name).to(eq('Powell'))
      end

    it('returns the first name of a new instance of the Contacts') do
      test_phone_params = {:type => "personal", :number => "5037730029"}
      test_email_params = {:type => "work", :email => "test@gmail.com"}
      new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
      expect(new_contact.job_title).to(eq('Student'))
      end
    end

    describe('.all') do
      it('returns all stored contacts in the all_contacts array') do
        test_phone_params = {:type => "personal", :number => "5037730029"}
        test_email_params = {:type => "work", :email => "test@gmail.com"}
        new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
        expect(Contacts.all).to(eq([]))
        end

      it('returns all stored contacts in the all_contacts array') do
        test_phone_params = {:type => "personal", :number => "5037730029"}
        test_email_params = {:type => "work", :email => "test@gmail.com"}
        new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
        new_contact.save
        expect(Contacts.all).to(eq([new_contact]))
        end

      it('clears all stored contacts in all_contacts array') do
        test_phone_params = {:type => "personal", :number => "5037730029"}
        test_email_params = {:type => "work", :email => "test@gmail.com"}
        new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
        new_contact.save
        Contacts.clear
        expect(Contacts.all).to(eq([]))
        end

      it('returns second stored contact in the all_contacts array') do
        test_phone_params = {:type => "personal", :number => "5037730029"}
        test_email_params = {:type => "work", :email => "test@gmail.com"}
        new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
        new_contact.save
        new_contact2 = Contacts.new('James', 'Higgins', 'Student', test_phone_params, test_email_params)
        new_contact2.save
        expect(new_contact2.first_name).to(eq("James"))
        end
      end

   it('returns the phone number for an instance of a new contact') do
      test_phone_params = {:type => "personal", :number => "5037730029"}
      test_email_params = {:type => "work", :email => "test@gmail.com"}
      new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
      new_contact.save
      expect(Contacts.all[0].phone_array[0].number).to(eq("5037730029"))
  end
   it('returns the email address for an instance of a new contact') do
      test_email_params = {:type => "work", :email => "test@gmail.com"}
      test_phone_params = {:type => "personal", :number => "5037730029"}
      new_contact = Contacts.new('Nick', 'Powell', 'Student', test_phone_params, test_email_params)
      new_contact.save
      expect(Contacts.all[0].email_array[0].email).to(eq("test@gmail.com"))
  end

end
