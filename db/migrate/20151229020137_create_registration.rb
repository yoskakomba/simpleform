class CreateRegistration < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :lastname
      t.text :address
      t.string :suburb
      t.string :postcode
      t.string :telephone
      t.string :private_health_fund
      t.string :occupation
      t.string :email
      t.string :newsletter
      t.string :exercise_routine
      t.string :reference
      t.text :past_medical_history
      t.text :medication
      t.text :symptoms
      t.string :conditions
      t.text :other_experience
      t.string :preference
      t.string :body_area
      t.timestamps
    end
  end
end
