class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def show
  end

  private
  def set_art
    @art = Art.find(params[:id])
  end
end
