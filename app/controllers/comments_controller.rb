class CommentsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.new(comment_params)
		@comment.user = current_user
		if @comment.save
			format.html { redirect_to @product, notice: "Review was created successfully."}
			format.json { render :show, status: :created, location: @product }
		else
			format.html {rediret_to @product, alert: "Review was not saved successfully."}
			format.json { rendr json: @comment.errors, status: :unprocessable_entity }
		end
	end


	def destroy
		@comment = Comment.find(params[:id])
		product = @comment.product
		@comment.destroy
		redirect_to product
	end


	private

		def comment_params
			params.require(:comment).permit(:user_id, :body, :rating)
		end

	end
end