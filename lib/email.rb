class Email
  attr_accessor :type
  attr_accessor :email

  def initialize(type, email)
    self.type = type
    self.email = email
  end
end
