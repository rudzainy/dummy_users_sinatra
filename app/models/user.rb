class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :urls

  def self.check_duplicate(email)
    temp = self.find_by email: email

    if temp == nil
      true
    else
      false
    end
  end

  def self.authenticate(email, password)
    check = self.find_by email: email, password: password
    if check == nil
      false
    else
      true
    end
  end
end
