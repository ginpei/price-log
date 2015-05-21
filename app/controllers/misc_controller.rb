class MiscController < ApplicationController
  def home
    if current_user
      redirect_to items_path
    end
  end
end
