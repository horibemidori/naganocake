class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_current_customer
  
  def show
    @customer = current_customer
  end
  
  def edit
    
  end
  
  def unsubscribe
  
  end
  
  def withdraw
    @customer.update(is_active: false)
    reset_session
    redirect_to root_path
  end
end


private

  def set_current_customer
    @customer = current_customer
  end

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :email)
  end
