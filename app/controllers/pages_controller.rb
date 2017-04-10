class PagesController < ApplicationController
  def welcome
    @header = "Welcome Header"
  end

  def about
    @header = "About Header"
  end

  def contest
    @header = "Contest Header"
  end
end
