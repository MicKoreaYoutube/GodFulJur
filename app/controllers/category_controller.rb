class CategoryController < ApplicationController
  def create
	 if user_signed_in?
  		if current_user.role != "GODFULJUR"
			render template: "error/404"
		else
			Category1.create(guideline_id: params[:guideline_id], content: params[:content], content2: params[:content2])
			redirect_to request.referrer
		end
	 end
  end
	
  def edit
  	if user_signed_in?
  		if current_user.role != "GODFULJUR"
			render template: "error/404"
		else
			@law = params[:guideline_id]
			@guideline = Category1.find(params[:guideline_id])
			@guideline = Category1.find(params[:id])
			@content = @guideline.content
			@content2 = @guideline.content2
			@id = @guideline.id
		end
	end
  end

  def update
  	if user_signed_in?
  		if current_user.role != "GODFULJUR"
			render template: "error/404"
		else
	    @id = Guideline.find(params[:guideline_id])
	    @guideline = Category1.find(params[:id])
	    @guideline.update(content: params[:content], content2: params[:content2])
	    redirect_to "/guidelines/#{@id.id}"
		end
	end
  end

  def destroy
  if user_signed_in?
  		if current_user.role != "GODFULJUR"
			render template: "error/404"
		else
	    @guideline = Category1.find(params[:id])
	    @guideline.update(content2: '<삭제>')
   	    redirect_to request.referrer
		end
  end
  end
end
