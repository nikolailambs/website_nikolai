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

    @description = ["This is an example of how a modern page could look like. It's a very simple and clean page, that could perfectly show features of apps or products as well as for consultants or laywers.", "The art example is a very nice page for photographers, architects or artists. This page is based on one or more photos as the background with fewer text.", "Playful is a more unusual way of how you could implement a more interesting and exotic navigation menu. If you are a game developer or if you just want to gain more attention with a playful website.", "The last example is a very funny and also exotic website, that get's developed and coded during while you are on the page. But see for yourself..."]

    @icon_array = ["sql", "ruby2", "rails", "js", "html", "git2", "css", "bootstrap"]
    @opacity = ["less", "less", "strong", "less", "less", "strong", "less", "strong"]
    @rand_top = [50, 25, 54, 86, 7, 70, 4, 97]
    @rand_left = [0, 45, 98, 0, 4, 54, 86, 91]
  end
end
