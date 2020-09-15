Rails.application.routes.draw do
if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/your/endpoint"
  end
post "/graphql", to: "graphql#execute"
# resources :blogs
# root to: 'blogs#index'
end
