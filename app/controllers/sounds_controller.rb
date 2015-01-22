class SoundsController < ApplicationController
  def index
    @sounds = Sound.all
  end

  def new
    @sound = Sound.new
  end

  def create
    sound = Sound.create(sound_params)
    redirect_to sound_path(sound)
  end

  def show
    @sound = Sound.find(params[:id])
    @comments = @sound.comments
    @comment = @sound.comments.new
  end

  def edit
    @sound = Sound.find(params[:id])
  end

  def update
    sound = Sound.find(params[:id])
    sound.update(sound_params)
    redirect_to sound_path(sound)
  end

  def destroy
    sound = Sound.find(params[:id])
    sound.destroy
  end

  private

  def sound_params
    params.require(:sound).permit(:title, :soundcloud_url)
  end
end
