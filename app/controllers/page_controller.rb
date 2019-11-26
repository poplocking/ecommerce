# frozen_string_literal: true

class PageController < ApplicationController
  def index
    @pages = Page.order(:title)
  end

  def show
    @page = Page.find(params[:id])
  end

  def permalink
    @page = Page.find_by_permalink(params[:permalink])

    if @page
      render :show
    else
      redirect_to root_path
    end
  end
end
