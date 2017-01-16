class ThankYou < AppicationController

def thank_you
	@name = parmas[:name]
	@email = params[:email]
	@message = params[:message]
	ActionMailer::Base.mail(:from => @email,
		:to => 'tim.m.parsons@hotmail.com',
		:subject => "A new contact form message from #{@name}"),
		:body => @message).deliver_now
end