class StaticPagesController < ApplicationController
  def home
  	@letters = Letter.all
  	
  end
end
