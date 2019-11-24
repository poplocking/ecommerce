# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    @products = Product.order(:ProductName)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @searchProduct = Product.where(ProductName: @query)
  end
end
