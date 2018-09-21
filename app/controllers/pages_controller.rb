class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home

  def home
    @bbqs = Barbacoa.all
    @bbq = Barbacoa.where.not(latitude: nil, longitude: nil)
     @markers = @bbq.map do |l|
      {
        lat: l.latitude,
        lng: l.longitude#,
      }
    end
  end

end
