class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @items = @user.items.where('created_at >= ?', Time.zone.now.utc.in_time_zone - 7.days)
    @item = Item.new
  end
end
