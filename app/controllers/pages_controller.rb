class PagesController < ApplicationController
	# layout 'admin'  #此為一次設定這個controller下的所有樣板
  def home
  end

  def about
  	@name = params[:name]
  	render layout: 'admin'  #透過 render 各別單獨指定版型
  	# params[:name] # => "大大"
  	# parama['name'] # => "大大"
  end

  def math
  	@numbers = (1..46).to_a.sample(6)
  end
end
