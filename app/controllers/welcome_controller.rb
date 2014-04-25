class WelcomeController < ApplicationController
  def index
  end

  def reverse
    word = params[:h1Text]
    word.reverse.upcase!
    render json: { h1Text: word.reverse.upcase!}

    # respond_to do |format|
    #   format.html
    #   format.json { render :json => word }
    # end
  end
end
