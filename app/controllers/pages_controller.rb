class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :impressum]

  def home
  end

  def impressum

  end

end
