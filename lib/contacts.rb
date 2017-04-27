
class Contacts

  @@contacts_array = []

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :job_title
  attr_accessor :phone


  def initialize (first_name, last_name, job_title, phone)
    self.first_name = first_name
    self.last_name = last_name
    self.job_title = job_title
    self.phone = Phone.new(phone)
  end

  def Contacts.all
    @@contacts_array
  end

  def save
    @@contacts_array.push(self)
  end

  def Contacts.clear
    @@contacts_array = []
  end
end




class Phone
  @@phone_array = []

  attr_accessor :personal
  # attr_accessor :cell
  # attr_accessor :home

  def initialize(personal)
    self.personal = personal
    # self.cell = cell
    # self.home = home
  end

  def Phone.all
    @@phone_array
  end
end
