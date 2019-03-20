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

  def edit
    @chirp = Chirp.find(params[:id])
  end

  def update
    chirp = Chirp.find(params[:id])
    chirp.update(content: params[:content])

    redirect_to "/chirp/#{chirp.id}"
  end

  def destroy
    chirp = Chirp.find(params[:id])
    chirp.destroy

    redirect_to "/chirps"
  end
end
