class ShortUrlsController < ApplicationController
  respond_to :html

  def create
    short_url = ShortUrl.create(params[:short_url])

    respond_with short_url, location: '/'
  end

  def redirect
    shortened_url = ShortUrl.find_by_short_url(params[:short_url])

    redirect_to shortened_url.original_url
  end
end
