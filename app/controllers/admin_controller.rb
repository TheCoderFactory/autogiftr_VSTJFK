class AdminController < ApplicationController
	# layout 'admin', only: [:index]
  def index
  	@gifts = Gift.all
  	@future_occasions = Occasion.future_occasions.undelivered
  	@delivered_occasions = Occasion.delivered
  	authorize! :manage, @gifts
  end
end
