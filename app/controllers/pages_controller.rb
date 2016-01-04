class PagesController < ApplicationController
    def index
      @registration = Registration.new
    end
end