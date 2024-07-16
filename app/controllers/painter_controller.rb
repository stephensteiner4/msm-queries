class PainterController < ApplicationController
  def paint
    @director_tab = Director.all

    render({:template => "homepage_templates/director_home"})
  end

  def dot
    @direct_id = params.fetch("director_id").to_i

    @direct_info = Director.where({:id => @direct_id}).at(0)

    @filmography = Movie.where({:director_id => @direct_id})

    render({:template => "results_templates/director_results"
  })
  end
end
