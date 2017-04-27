
class Contacts

  @@contacts_array = []

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :job_title
  attr_accessor :phone_array


  def initialize (first_name, last_name, job_title, phone_params)
    self.first_name = first_name
    self.last_name = last_name
    self.job_title = job_title
    self.phone_array = [Phone.new(phone_params.fetch(:type), phone_params.fetch(:number))]

  end

  def Contacts.all
    @@contacts_array
  end

  def add_phone (phone_params)
    self.phone_array.push(Phone.new(phone_params.fetch(:type), phone_params.fetch(:number)))
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
