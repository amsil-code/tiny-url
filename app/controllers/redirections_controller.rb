class RedirectionsController < ApplicationController
  before_action :set_redirection, only: %i[redirect info]

  def new
    @redirection = Redirection.new
  end

  def create
    @redirection = Redirection.new(redirection_params)

    if @redirection.save
      redirect_to redirection_info_path(mask_url: @redirection.mask_url), notice: 'URL has successfully been created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def redirect
    @redirection.visits.create(ip_address: request.remote_ip)
    url = @redirection.url_address
    redirect_to url.match(/https?:\/\//) ? url : "http://#{url}"
  end

  private

  def set_redirection
    @redirection = Redirection.find_by(mask_url: params[:mask_url])
    redirect_to root_path unless @redirection
  end

  def redirection_params
    params.require(:redirection).permit(:url_address, :mask_url)
  end
end
