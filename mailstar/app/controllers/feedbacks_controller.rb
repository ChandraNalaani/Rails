class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end
  
  def create
    @feedback = Feedback.new(params[:feedback])
    if @feedback.valid?
      FeedbackMailer.delay.new_feedback(@feedback)

      render text: 'Thank you for your feedback'
    else
      flash[:alert] = 'Please fill in the required fields'
      render :new
    end
  end

end
