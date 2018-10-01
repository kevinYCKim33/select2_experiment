class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update]

  def index
    @videos = Video.all
  end

  def show
    #you wrote set_video in the before_action kevin
  end

  def new
    @video = Video.new
    @genres = Genre.all
  end

  def edit
    #you wrote set_video in the before_action kevin
    @genres = Genre.all
  end

  def create
    # {"title": "Red Velvet mix", "genre_ids": ["2", "4"]}
    # genre_ids: originally written as custom overwriting method
    # only to realize that @video.genre_ids is an awesome ActiveRecord Method
    binding.pry
    @video = Video.new(video_params)
    @video.save
    redirect_to @video
  end

  def update
    #you wrote set_video in the before_action kevin
    @video.update(video_params)
    redirect_to @video
  end

  private

    def set_video
      @video = Video.find(params[:id])
    end

    def video_params
      params.require(:video).permit(:title, genre_ids: [])
    end

end
