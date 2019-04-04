class ChirpsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @chirps = Chirp.all
  end

  def show
    @chirp = Chirp.find(params[:id])
    @comment = Comment.new
  end

  def new
    @chirp = Chirp.new
  end

  def create
    @chirp = Chirp.new(content: params[:content])
    if @chirp.save
      flash[:success] = "Chirp successfully created!"
      redirect_to "/chirps/"
    else
      flash[:error] = "Your chirp went bad"
      render 'new'
    end
  end

  def edit
    @chirp = Chirp.find(params[:id])
  end

  def update
    @chirp = Chirp.find(params[:id])
    if @chirp.update(content: params[:content])
      flash[:success] = "Chirp was updated"
      redirect_to "/chirps/#{@chirp.id}"
    else
      render 'edit'
    end
  end

  def destroy
    chirp = Chirp.find(params[:id])
    chirp.destroy
    flash[:success] = "Un-chirped!"
    redirect_to "/chirps"
  end
end
