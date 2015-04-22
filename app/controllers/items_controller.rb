class ItemsController < ApplicationController
  respond_to :html, :js

  def create
    @user = current_user

    @item = current_user.items.build( item_params )
    @item.user = @user
    @new_item = Item.new 

    if @item.save
      flash[:notice] = 'Item was created.'
      redirect_to @user
    else
      flash[:error] = 'There was an error saving the item. Please try again.'
    end
  end
  
  private

   def item_params
     params.require(:item).permit(:name, :body)
   end

end