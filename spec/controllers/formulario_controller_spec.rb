require 'spec_helper'

describe FormularioController do

	describe "teste tratamento de string" do
	    it "to uppercase" do
	      @msg = 'teste'
	      @msg.upcase!
	      expect(@msg).to eq('TESTE')
	    end

	    it "to reverse" do
	    	@msg = "abcd"
	    	@msg.reverse!
	    	expect(@msg).to eq('dcba')
	    end
	end

end
