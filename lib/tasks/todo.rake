namespace :todo do
  desc 'TODO'
  desc 'Deletes To-do items that have been open for 7 days or longer.'
  task delete_items: :environment do
    Item.where('created_at <= ?', Time.zone.now.utc.in_time_zone - 7.days).destroy_all
  end
end
