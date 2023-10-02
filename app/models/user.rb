class User < ApplicationRecord
   has_secure_password
    has_many_attached :files
 validates :Nom,  
      presence: true  
validates :Prénom,  
    presence: true  
validates :Date_de_naissance,  
    presence: true  
validates :sexe,  
    presence: true  
validates :Adresse,  
    presence: true  
validates :Ville,  
    presence: true  
validates :Téléphone,  
    presence: true  
validates :spécialité,  
    presence: true  
validates :password_digest,  
    presence: true  
validates :code_postal,  
    presence: true  
validates :Nationalité,  
    presence: true  
validates :commune,  
    presence: true  
validates :files,  
    presence: true  
validates :Email,  
    presence: true,  
    uniqueness: true,  
    format: {  
      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i  
    }  

end
