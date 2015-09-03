
require 'rufus-scheduler'

s = Rufus::Scheduler.singleton

s.every '1d' do
  system("rake todo:delete_items")
end