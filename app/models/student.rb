class Student < ApplicationRecord
    has_secure_password
    has_many_attached :files

end
