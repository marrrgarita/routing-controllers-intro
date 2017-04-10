class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "Welcome Header"
  end

  def about
    @header = "About Header"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to welcome_path

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

  def secrets
    if params[:magic_word] == "puppy"
      render :secrets
    else
      flash[:alert] = "Sorry, you are not authorized to view this page"
      redirect_to welcome_path
    end
  end



end
