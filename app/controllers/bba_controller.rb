class BbaController < ApplicationController
  def error
    puts params
  end

  def performance
    puts params
    NewRelicService.performance(params)
    render json: { params: params, message: "performance recorded" }
  end
end

