class BbaController < ApplicationController
  def error
    puts params
  end

  def performance
    puts params

    render json: { params: params, message: "performance recorded" }
  end
end

