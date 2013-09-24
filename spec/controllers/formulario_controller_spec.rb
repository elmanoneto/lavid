require 'spec_helper'

describe FormularioController do

	describe "teste tratamento de string:" do

	 	  it "teste acentuacao" do
	    	post :index, texto: 'ẽṕá', format: :json
	    	@response.body.should == 'ÁṔẼ'	
	    end

	    it "teste string em branco" do
	    	post :index, texto: '', format: :json
	    	@response.body.should == ''
	    end

	    it "teste string normal" do
	    	post :index, texto: 'abcd', format: :json
	    	@response.body.should == 'DCBA'
	    end

	    it "teste com simbolos" do
	    	post :index, texto: '£®©œþƔ', format: :json
	    	@response.body.should == 'Ɣþœ©®£'
	    end

	end

end	
