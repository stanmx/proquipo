class PagesController < ApplicationController

  layout 'application'

  def index
    render :layout => "introduction"
  end
  
  def panorama_general
  end
  
  def refacciones
  end

end
