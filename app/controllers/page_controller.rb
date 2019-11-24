# frozen_string_literal: true

class PageController < ApplicationController
  def permalink
    @permalink = Page.find_by_permalink(params[:permalink])

    if @permalink
      render :show
    else
      redirect_to root_path
    end
  end

  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end
end
