class BrushController < ApplicationController
  def stroke
    @actor_tab = Actor.all

    render({:template => "homepage_templates/actor_home"})
  end

  def dot
    @act_id = params.fetch("actor_id").to_i

    @act_info = Actor.where({:id => @act_id}).at(0)

    @char_list = Character.where({:actor_id => @act_id})

    ###@filmography = Movie.where({:id => Character.all.movie_id})

    render({:template => "results_templates/actor_results"
  })
  end
end
