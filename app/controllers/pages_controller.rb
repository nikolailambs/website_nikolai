class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :landing]

  def landing
  end

  def home
    @examples = []
    @examples.push(Example.first)
    @examples.push(Art.first)
    @examples.push(Playful.first)
    @examples.push(Coding.first)

    @rand_top = [10, 40, 40, 40, 60, 70, 70, 10, 60]
    @rand_left = [60, 80, 20, 60, 80, 40, 70, 8, 10]
  end
end
