class Item < ActiveRecord::Base
  belongs_to :user

  def days_lef
  	(DateTime.now.to_date - create_at.to_date).to_i
  end

end
