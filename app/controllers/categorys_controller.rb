# frozen_string_literal: true

class CategorysController < ApplicationController
  def index
    @categorys = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
end
