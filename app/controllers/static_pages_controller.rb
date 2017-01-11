class StaticPagesController < ApplicationController
  def index
 	@producets = Products.all
  end

  def landing_page
  	@featured_product = Product.first
	end

end

