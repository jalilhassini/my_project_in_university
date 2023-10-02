json.extract! student, :id, :Nom, :Prénom, :Date_de_naissance, :sexe, :Adresse, :Ville, :Téléphone, :spécialité, :password, :code_postal, :Email, :Nationalité, :commune, :created_at, :updated_at
json.url student_url(student, format: :json)
