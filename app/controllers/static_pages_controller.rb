class StaticPagesController < ApplicationController
  def index
 	@products = Products.limit(3)
  end

  def landing_page
  	@products = Product.limit(3)
	end

	def thank_you
	@name = parmas[:name]
	@email = params[:email]
	@message = params[:message]
	UserMailer.contact_form(@email, @name, @message).deliver_now
end

end

