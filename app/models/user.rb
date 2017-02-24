class User < ApplicationRecord

  before_save {
    if name
       name_arry = []
       name.split.each do |parts|
       name_arry.push(parts.capitalize)
       end
       self.name = name_arry.join(" ")
    end

    self.email = email.downcase if email.present?
}

 # #3
   validates :name, length: { minimum: 1, maximum: 100 }, presence: true
 # #4
   validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
   validates :password, length: { minimum: 6 }, allow_blank: true
 # #5
   validates :email,
             presence: true,
             uniqueness: { case_sensitive: false },
             length: { minimum: 3, maximum: 254 }

 # #6
   has_secure_password

end
