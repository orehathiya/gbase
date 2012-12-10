class GraphDataController < ApplicationController
  def show
    render :file => 'public/data/%s.json' % params[:id]
  end
end
