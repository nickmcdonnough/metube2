class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def create
    Video.create(video_params)
    redirect_to videos_path
  end

  def new
    @video = Video.new
  end

  def edit
    @video = Video.find(params[:id])
  end

  def show
    @video = Video.find(params[:id])
  end

  def update
    video = Video.find(params[:id])
    video.update(video_params)
    redirect_to video_path(video)
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path
  end

  private

  def video_params
    params.require(:video).permit(:title, :description, :youtube_id)
  end
end
