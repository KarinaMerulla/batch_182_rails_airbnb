class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    @flat_id = params[:id].to_i
    @flat = @flats.select{|f| f['id'] == @flat_id }.first
  end


  private

  def set_flats
    require "open-uri"
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
