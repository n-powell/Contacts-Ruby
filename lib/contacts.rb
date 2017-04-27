
class Contacts

  @@contacts_array = []

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :job_title

  def initialize (first_name, last_name, job_title)
    self.first_name = first_name
    self.last_name = last_name
    self.job_title = job_title
  end

  def Contacts.all
    @@contacts_array
  end
end
