class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
   layout 'admin'
end
