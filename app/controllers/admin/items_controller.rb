class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!
  
  def new
    @item = Item.new
  end
end
