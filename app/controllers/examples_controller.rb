class ExamplesController < ApplicationController
  before_action :set_example, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def show
  end

  private

  def set_example
    @example = Example.find(params[:id])
  end
end
