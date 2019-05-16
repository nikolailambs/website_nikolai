class PrivacyController < ApplicationController
  before_action :set_example, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @earnings = 1
  end

  def show
  end

end
