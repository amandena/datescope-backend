class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :sign
      t.string :bio
      t.string :gender
      t.string :preference
      t.string :location
      t.string :social_media

      t.timestamps
    end
  end
end
