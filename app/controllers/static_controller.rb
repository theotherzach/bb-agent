class StaticController < ApplicationController

  def index
    @bars = Bar.all
  end
end
