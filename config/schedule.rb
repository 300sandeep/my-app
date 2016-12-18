# every 1.hour do
# 	binding.pry
#   runner 'PetMailer.test_schedule_email'
# end

set :environment, "development"
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}
every 1.day, :at => '3:05am' do
  #command "echo 'one' && echo 'two'"

 # runner 'PetMailer.test_schedule_email'
 rake 'events:custom_package'
end
# every :day, :at => '8am' do
#   runner 'Application.notify_stale_applicants'
# end