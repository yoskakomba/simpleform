require 'test_helper'

class RegistrationTest < ActiveSupport::TestCase
    
  def setup
    @registration = Registration.new(name: "Yosafat", lastname: "Ariel", email: "ariel.kakomba@gmail.com", address: "Vila Nusa Indah jalan Anggrek blok F5 NO 9", suburb: "Jatiasih", postcode: "16969",
                    telephone: "0821122064", private_health_fund: "121040527", occupation: "Web Developer", newsletter: "yes",exercise_routine: "HIIT",
                    reference: "Google", past_medical_history: "Typhoid", medication: "Surgery", symptoms: "no", conditions: "healthy", other_experience: "None", 
                    preference: "quiet", body_area: "bottom")
        
  end
  
  test "registration should be valid" do
    assert @registration.valid?
  end
    
  test "name should be present" do
    @registration.name = " "
    assert_not @registration.valid?
  end
   
  test "name should not be too long" do
    @registration.name = "a" * 101
    assert_not @registration.valid?
  end
    
  test "name length should not be too short" do
    @registration.name = "aaaa" 
    assert_not @registration.valid?
  end
  
  test "lastname should be present" do
    @registration.lastname = " "
    assert_not @registration.valid?
  end
  
  test "lastname should not be too long" do
    @registration.lastname = "a" * 101
    assert_not @registration.valid?
  end
  
  test "lastname should not be too short" do
    @registration.lastname = "aaaa"
    assert_not @registration.valid?
  end
  
  test "address must be present" do
    @registration.address = " "
    assert_not @registration.valid?
  end
  
  test "address should not be too long" do 
    @registration.address = "a" * 101
    assert_not @registration.valid?
  end
  
  test "address should not be too short" do
    @registration.address = "a" * 19
    assert_not @registration.valid?
  end
end