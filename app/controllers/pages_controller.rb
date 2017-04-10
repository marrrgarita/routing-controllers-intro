class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "Welcome Header"
  end

  def about
    @header = "About Header"
  end

  def contest
    @header = "Contest Header"
  end

  def kitten
    @header = "Kitten Header"
  end

  def kittens
    @header = "Kittens Header"
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end


end
