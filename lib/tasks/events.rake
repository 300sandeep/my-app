
namespace :events do
  task :custom_package => :environment do
   
     PetMailer.test_schedule_email.deliver_now
  end
end