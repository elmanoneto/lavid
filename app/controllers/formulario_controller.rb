class FormularioController < ApplicationController
  skip_before_filter :verify_authenticity_token  

  def index    
  	if params[:texto]
      msg = params[:texto]
	  	msg = msg.mb_chars.upcase.to_s
      msg = msg.reverse
	  	respond_to do |format|
		    format.json {render json: msg, :status => :ok}
		  end
  	end
  end
end
