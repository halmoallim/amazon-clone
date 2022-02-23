class DailysummaryjobJob < ApplicationJob
  queue_as :default

  def perform(*args)
    items = Item.where(Item[:created_at] < 1.days.ago)
    users = User.where(User[:created_at] < 1.days.ago)
    DailyMailer.with(users: users, items: items).daily_mailer.deliver_now
  end
end
