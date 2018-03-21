Rails.application.routes.draw do
  root to: "searches#home"

  post "search_submitted", to: "searches#search_submitted"

  get "save_incomplete_searches", to: "searches#save_incomplete_searches"
  get "search_dashbord_analytics", to: "searches#dashbord_analytics"
  get "clear_search_analytics", to: "searches#clear_search_analytics"
end
