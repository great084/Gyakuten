class MoviesController < ApplicationController
  def index
    @movie = <<~TEXT
     <iframe width="560" height="315" src="https://www.youtube.com/embed/FIfbOSy1Bzg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
     TEXT
  end
end
