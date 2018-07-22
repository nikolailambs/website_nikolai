class PlayfulsController < ApplicationController
  before_action :set_playful, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def show
  end

  private
    def set_playful
      @playful = Playful.find(params[:id])
    end
  end
