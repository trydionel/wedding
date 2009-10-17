class RegistriesController < ApplicationController
  def index
    @registries = Registry.all
  end

  def show
    @registry = Registry.find(params[:id])
  end
end
