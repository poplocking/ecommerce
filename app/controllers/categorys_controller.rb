# frozen_string_literal: true

class CategorysController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end
end
