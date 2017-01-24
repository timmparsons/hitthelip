class UserRegistrationsController < Deivse::RegistrationController
	def create
		super
		if @user.persisted?
			UserMailer.welcome(@user).deliver_now
		end
	end
end		