class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing_page]
  def landing_page
    redirect_to products_path
  end

  def dashboard
  end
end
