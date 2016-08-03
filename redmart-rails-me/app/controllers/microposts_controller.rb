class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  def create
    @product = Product.find(params[:product_id])
    @micropost = @product.microposts.build(micropost_params)
    @micropost.user_id = current_user.id
    # @micropost.product_id = @product.id another way
   if @micropost.save
     flash[:success] = "Feedback submited!"
     redirect_to @product
   else
    redirect_to @product
    end
  end

  def destroy
  end

  private

   def micropost_params
     params.require(:micropost).permit(:content, :picture)
   end

   def correct_user
     @micropost = current_user.microposts.find_by(id: params[:id])
     redirect_to root_url if @micropost.nil?
   end
end
