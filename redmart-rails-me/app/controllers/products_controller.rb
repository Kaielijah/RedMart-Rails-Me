class ProductsController < ApplicationController
  #  before_action :logged_in_user, only: [:index, :edit, :update]
   before_action :correct_user, only: [:edit, :update]
   before_action :admin_user,     only: :destroy

  def index
  @product = Product.paginate(page: params[:page])
  end

  def show
    @product = Product.find(params[:id])
    # @microposts = @product.microposts.paginate(page: params[:page])

  end

  def new
    @product = Product.new

  end
# this section is for admin
  def create
    @product = Product.new(product_params)
    if @product.save
      log_in @product
      flash[:success] = 'Welcome to RedMart!'
      redirect_to @product
    else
      render 'new'
    end
  end
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "Profile updated"
        redirect_to @product
    # Handle a successful update.
    else
          render 'edit'
        end
  end
  def destroy
      product.find(params[:id]).destroy
      flash[:success] = "product deleted"
      redirect_to products_url
    end
    private
    #confirms a logged-in product
    def logged_in_product
      unless logged_in?
        store_location
        flash[:danger] = 'Please log in.'
        redirect_to login_url
      end
    end
    #confirms the correct product
    def correct_product
      @product = product.find(params[:id])
      redirect_to(root_url) unless current_product?(@product)
  end


  # Confirms an admin product.
      def admin_product
        redirect_to(root_url) unless current_product.admin?
      end

end
