class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :impressum]

  def home
    @projects = Project.all.order(created_at: :desc)
  end

  def impressum

  end

end
