class ElectronicsController < ApplicationController
  def index
    @electronics = Electronic.new
  end

  def new
    @electronics = Electronic.new
    @electronics = Electronic.all
  end
  def create


  end

  def edit
  end

  def destroy
  end

  def show
    @electronics = Electronic.all
  end
end
