# frozen_string_literal: true

class ProductController < ApplicationController
  # before_action :authenticate_user!, except: [:index, show]
  before_action :initialize_session
  before_action :load_cart

  def index
    @products = Product.order(:ProductName).page(params[:page]).per(1)
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    flash[:notice] = 'Successfully added to cart'
    redirect_to root_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end

  def initialize_session
    session[:cart] ||= []
  end

  def load_cart
    @cart = Product.find(session[:cart])
  end

  def search_results
    @query = params[:query]
    @searchProduct = Product.all

    @searchProduct = @searchProduct.where('ProductName LIKE ?', "%#{@query}%") if @query.present?

    @searchProduct = @searchProduct.where(category_id: params[:categorys][:category_id]) if @query.present?
  end
end
