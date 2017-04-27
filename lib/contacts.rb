
class Contacts

  @@contacts_array = []

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :job_title
  attr_accessor :phone_array
  attr_accessor :email_array
  attr_accessor :id



  def initialize (first_name, last_name, job_title, phone_array, email_array)
    self.first_name = first_name
    self.last_name = last_name
    self.job_title = job_title
    self.phone_array = phone_array
    self.email_array = email_array
    self.id = @@contacts_array.length().+(1)

  end

  def Contacts.all
    @@contacts_array
  end

  def add_phone (phone_params)
    self.phone_array.push(Phone.new(phone_params.fetch(:type), phone_params.fetch(:number)))
  end
  def add_email (email_params)
    self.email_array.push(Email.new(email_params.fetch(:type), email_params.fetch(:email)))
  end

  def save
    @@contacts_array.push(self)
  end

  def Contacts.clear
    @@contacts_array = []
  end

  def Contacts.find (input)
    found_contact = nil
    @@contacts_array.each do |contact|
      if contact.id().eql?(input.to_i())
        found_contact = contact
      end
    end
  found_contact
end

end




class Phone
  attr_accessor :type
  attr_accessor :number

  def initialize(type, number)
    self.type = type
    self.number = number
  end
end

class Email
  attr_accessor :type
  attr_accessor :email

  def initialize(type, email)
    self.type = type
    self.email = email
  end
end
