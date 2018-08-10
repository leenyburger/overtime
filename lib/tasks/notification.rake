namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    #1. Schedule to run at Sunday at 5PM
    #2. Iterate over all employees
    #3. Skip Admin users
    #4. Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()


  end

end
