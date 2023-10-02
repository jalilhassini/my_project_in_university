class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :Nom, :limit => 25, :null => false
      #Ex:- :default =>''
      t.string :Prénom, :limit =>25, :null => false
      t.date :Date_de_naissance, :null => false
      t.string :sexe, :null => false
      t.string :Adresse, :null => false
      t.string :Ville, :null => false
      t.string :Téléphone, :null => false
      t.string :spécialité, :null => false
      t.string :password_digest, :null => false
      t.integer :code_postal, :null => false
      t.string :Email, :null => false, :unique => true
      t.string :Nationalité, :null => false
      t.string :commune, :null => false  
      t.boolean :admin, :default => false
      t.string :Matricule, :limit =>12 ,:unique => true
    end
  end
end
