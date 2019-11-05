# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    @products = products.order(:ProductName)
  end

  def show
    @product = products.find(params[:id])
  end
end
