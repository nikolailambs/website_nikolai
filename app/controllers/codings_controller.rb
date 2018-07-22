class CodingsController < ApplicationController
  before_action :set_coding, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coding
      @coding = Coding.find(params[:id])
    end
  end
