# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000/' # later change to the domain of the frontend app
    max_age = 3600
    # resource '*', headers: :any, methods: [:get, :post, :patch, :put],
    # expose: [:Authorization]
    resource(
     '*',
     headers: :any,
     expose: ["Authorization"],
     methods: [:get, :patch, :put, :delete, :post, :options, :show, :create, :update, :destroy]
    )
  end
end
