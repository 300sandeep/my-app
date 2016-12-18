class PetMailer < ApplicationMailer

  def welcome_email(pet,user)
  	binding.pry
    @pet = pet
    @url  = 'http://example.com/login'
    mail(to: user.email, subject: 'Welcome to My Awesome Site')
  end

  def test_schedule_email
  	
    #@pet = pet
    @url  = 'http://example.com/login'
    mail(to: "sandeep@gmail.com", subject: 'Welcome to My Awesome Site')
  end

end
