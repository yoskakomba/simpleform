class RegistrationsController < ApplicationController
  def index
    @registration = Registration.new
  end
  
  def create
    @registration = Registration.new(registration_params)
    
    if @registration.save
      flash[:success] = "Your registration was created successfully"
      redirect_to root_path
    else
      
      redirect_to root_path
    end
  end
  
  private
  
    def registration_params
      params.require(:registration).permit(:name, :lastname, :address, :suburb, :postcode, :telephone, 
      :private_health_fund, :occupation, :email, :newsletter, :exercise_routine, :reference, :past_medical_history,
      :medication, :symptoms, :conditions, :other_experience, :preference, :body_area)
    end
end