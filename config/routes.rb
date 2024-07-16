Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/actors", { :controller => "brush", :action => "stroke"})
  get("/actors/:actor_id", { :controller => "brush", :action => "dot"})

  get("/directors", { :controller => "painter", :action => "paint"})

  get("/movies", { :controller => "canvas", :action => "sit"})
end
