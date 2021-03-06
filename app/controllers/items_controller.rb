class ItemsController < ApplicationController
  respond_to :html, :js
  before_action :authenticate_user!

  def create
    @user = current_user

    @item = current_user.items.build(item_params)
    @item.user = @user

    if @item.save
      flash[:notice] = 'Item was created.'
      redirect_to @user
    else
      flash[:error] = 'There was an error saving the item. Please try again.'
    end
  end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])

    @item.destroy

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :body)
  end
end
