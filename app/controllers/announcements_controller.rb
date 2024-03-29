class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /announcements
  # GET /announcements.json
  def index
    @announcements = Announcement.all.reverse
  end

  # GET /announcements/1
  # GET /announcements/1.json
  def show
  end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
  end

  # GET /announcements/1/edit
  def edit
	if user_signed_in?
  		if current_user.role != "GODFULJUR"
			render template: "error/404"
		end
  	end
  end

  # POST /announcements
  # POST /announcements.json
  def create
	if user_signed_in?
  		if current_user.role != "GODFULJUR"
			render template: "error/404"
		else
			@announcement = Announcement.new(announcement_params)

			respond_to do |format|
			  if @announcement.save
				format.html { redirect_to @announcement, notice: 'Announcement was successfully created.' }
				format.json { render :show, status: :created, location: @announcement }
			  else
				format.html { render :new }
				format.json { render json: @announcement.errors, status: :unprocessable_entity }
			  end
			end
		end
  	end
  end

  # PATCH/PUT /announcements/1
  # PATCH/PUT /announcements/1.json
  def update
	if current_user.role != "GODFULJUR"
		render template: "error/404"
	else
		respond_to do |format|
		  if @announcement.update(announcement_params)
			format.html { redirect_to @announcement, notice: 'Announcement was successfully updated.' }
			format.json { render :show, status: :ok, location: @announcement }
		  else
			format.html { render :edit }
			format.json { render json: @announcement.errors, status: :unprocessable_entity }
		  end
		end
	end
  end

  # DELETE /announcements/1
  # DELETE /announcements/1.json
  def destroy
  	if current_user.role != "GODFULJUR"
		render template: "error/404"
	else
		@announcement.destroy
		respond_to do |format|
		  format.html { redirect_to announcements_url, notice: 'Announcement was successfully destroyed.' }
		  format.json { head :no_content }
		end
	end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def announcement_params
      params.require(:announcement).permit(:title, :content)
    end
end
