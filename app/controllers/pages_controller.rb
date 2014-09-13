class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end
  
  def map
	@geo_data = GeoDatum.all
  end
end
