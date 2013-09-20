class FormularioController < ApplicationController
  skip_before_filter :verify_authenticity_token  

  def index
  	if params[:texto]
  		@msg = params[:texto]
	  	@msg.reverse!.upcase!
	  	respond_to do |format|
		    format.json {render json: @msg, :status => :ok}
		end
  	end
  end
end
