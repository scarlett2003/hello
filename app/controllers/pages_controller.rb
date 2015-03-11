class PagesController < ApplicationController
	layout 'admin'
  def home
  end

  def about
  	@name = params[:name]
  	# render layout: 'admin'
  	# params[:name] # => "大大"
  	# parama['name'] # => "大大"
  end

  def math
  	@numbers = (1..46).to_a.sample(6)
  end
end
