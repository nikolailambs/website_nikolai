class ClassicsController < ApplicationController
  before_action :set_classic, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def show
  end

  private
    def set_classic
      @classic = Classic.find(params[:id])
    end
end
