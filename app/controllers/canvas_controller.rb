class CanvasController < ApplicationController
  def sit
    @movie_tab = Movie.all

    render({:template => "homepage_templates/movie_home"})
  end

  def hang
    @movie_id = params.fetch("movie_id").to_i

    @movie_info = Movie.where({:id => @movie_id}).at(0)

    ###@char_list = Character.where({:movie_id => @movie_id})

    ###@filmography = Movie.where({:id => Character.all.movie_id})

    render({:template => "results_templates/movie_results"
  })
  end
end
