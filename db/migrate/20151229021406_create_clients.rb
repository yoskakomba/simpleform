class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :clientname
      t.string :email
      t.string :password
      t.timestamps
      
    end
  end
end
