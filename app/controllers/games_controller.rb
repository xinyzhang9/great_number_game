class GamesController < ApplicationController
  def index
  	if(!session[:ans])
  		session[:ans] = rand(100)
  	end
  	if(!session[:counter])
  		session[:counter] = 0
  	end

  	# render text: session[:number]
  end

  def reset
  	reset_session
  	redirect_to '/games/index'
  end

  def guess
  	if session[:counter] 
  		session[:counter] +=1
  	end

  	guess = guess_params[:number].to_i
  	if guess < session[:ans]
  		session[:info] = -1
  	elsif guess > session[:ans]
  		session[:info] = 1
  	else
  		session[:info] = 0
  	end
  	redirect_to '/games/index'
  		
  end
  private
  	def guess_params
  		params.require(:guess).permit(:number)
  	end

end
