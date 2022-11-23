class SupportController < ApplicationController
  skip_before_action :authenticate_user!
  def support
  end
end
