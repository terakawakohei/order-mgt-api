Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'localhost:8080','https://order-mgt.herokuapp.com'
  
  
      resource "*",
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
    end
  end