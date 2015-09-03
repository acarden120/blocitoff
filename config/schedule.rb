# Use this file to easily define all of your cron jobs.

set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}

every 2.minutes do
  rake "todo:delete_items"
end

# Learn more: http://github.com/javan/whenever
