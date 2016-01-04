class Registration < ActiveRecord::Base
    validates :name, presence: true, length: { minimum: 5, maximum: 100 }
    validates :lastname, presence: true, length: { minimum: 5, maximum: 100 }
    validates :address, presence: true, length: { minimum: 20, maximum: 100 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105 }, 
                    uniqueness: { case_sensitive: false }, 
                    format: { with: VALID_EMAIL_REGEX }
    validates :suburb, presence: true
    validates :postcode, presence: true, length: { maximum: 15 }
    validates :telephone, presence: true, length: { maximum: 15 }
    validates :private_health_fund, presence: true
    validates :occupation, presence: true
    validates :newsletter, presence: true
    validates :exercise_routine, presence: true
    validates :reference, presence: true
    validates :past_medical_history, presence: true
    validates :medication, presence: true
    validates :symptoms, presence: true
    validates :conditions, presence: true
    validates :other_experience, presence: true
    validates :preference, presence: true
    validates :body_area, presence: true
    
end