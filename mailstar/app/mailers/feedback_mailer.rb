class FeedbackMailer < ActionMailer::Base
  default from: "whatever@wherever.com"
  
  def new_feedback(feedback)
    @feedback = feedback
    
    mail(
      to: 'whatever@wherever.com',
      from: feedback.email,
      subject: feedback.subject
      )
  end
end
