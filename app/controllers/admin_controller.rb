class AdminController < ApplicationController
	layout 'admin', only: [:index]
  def index
  	@gifts = Gift.all
  end
end
