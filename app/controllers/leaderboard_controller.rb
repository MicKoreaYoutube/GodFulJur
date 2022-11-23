class LeaderboardController < ApplicationController
  skip_before_action :authenticate_user!
  def leaderboard
	  render template: "error/notMade"
  end
end
