class StoreController < ApplicationController
  skip_before_action :authenticate_user!
  def store
	  render template: "error/notMade"
  end
end
