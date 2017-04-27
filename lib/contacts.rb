
class Contacts

  @@contacts_array = []

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :job_title
  attr_accessor :phone_array
  attr_accessor :email_array



  def initialize (first_name, last_name, job_title, phone_params, email_params)
    self.first_name = first_name
    self.last_name = last_name
    self.job_title = job_title
    self.phone_array = [Phone.new(phone_params.fetch(:type), phone_params.fetch(:number))]
    self.email_array = [Email.new(email_params.fetch(:type), email_params.fetch(:email))]

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
