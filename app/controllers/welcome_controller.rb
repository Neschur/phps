class WelcomeController < ApplicationController
  def index
    page = params[:php] || 'index'
    render "/#{page}", layout: false, formats: [:php]
  end
end
