class ChirpsController < ApplicationController
  def index
    @chirps = Chirp.all
  end

  def show
    @chirp = Chirp.find(params[:id])
  end

  def new
    
  end

  def create
    chirp = Chirp.new(content: params[:content])
    chirp.save
    redirect_to "/chirps/"
  end
end
