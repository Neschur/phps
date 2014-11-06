class WelcomeController < ApplicationController
  def index
    init_params
    page = params[:php] || 'index'
    render "/#{page}", layout: false, formats: [:php]
  end

  private
  def init_params
    params = instance_variable_set("@#{request.method.downcase}", request.send(request.method))
    params.each do |key, value|
      unless instance_variables.include?("@#{key}".to_sym)
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
