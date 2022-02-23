class SendingEmailJob < ApplicationJob
  queue_as :default

  def perform(user: @user)
    puts "Add Mail to system is strated!!!!!!!!!!!!!!!!"
    puts "#{user.email} Mail added successfully"
  end
  
end
