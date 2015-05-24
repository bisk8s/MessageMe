class LettersController < ApplicationController
	 before_action :set_letter, only: [:destroy]
	 respond_to :html, :js

	def new 
		@letter = Letter.new
	end

    def destroy
    	@letter.destroy

    	respond_to do |format|      		
      		format.js   
      	end
	end

	def index
		 @letters=Letter.all
		 @letter = Letter.new
	end	

	def create
		 @letter = Letter.new(letter_params)

		 if @letter.save
		 	 respond_to do |format|		 	 	
		 	 	format.js
		 	  end
		 	end

	end

	 private
    # Use callbacks to share common setup or constraints between actions.
    def set_letter
      @letter = Letter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_params
      params.require(:letter).permit(:from, :content,:image_url)
    end
end
