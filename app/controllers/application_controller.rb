class ApplicationController < ActionController::API
    include ActionController::Cookies
  
    def hello_world
      session[:count] = (session[:count] || 0) + 1
      render json: { count: session[:count] }
    end

    def index
      @cats = Cat.all
      render json:@cats
    end

  end