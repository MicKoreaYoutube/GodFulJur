class GodfuljurController < ApplicationController
  skip_before_action :authenticate_user!
  def home
	  @content = Announcement.all.reverse.find(1)
  end
  def introduction
  end
end
