class NewslettersController < ApplicationController


  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save 
      @notice = 'You are successfully subscribed.'
      redirect_to root_path     
    else
      redirect_to contact_path
    end
  end
 
  def destroy
    @newsletter = Newsletter.find(params[:newsletter_id])
    @newsletter.destroy
  end

  private
    def newsletter_params
      params.require(:newsletter).permit(:email)
    end
end
