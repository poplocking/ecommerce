# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    @products = Product.order(:ProductName).page(params[:page]).per(1)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @searchProduct = Product.all

    @searchProduct = @searchProduct.where('ProductName LIKE ?', "%#{@query}%")

    #  @searchProduct = @searchProduct.where('category_id = ?', params[:category_id])
  end
end
