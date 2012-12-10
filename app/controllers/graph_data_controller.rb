class GraphDataController < ApplicationController
  def show
    @graphdata = GraphData.find(params[:id])
    render :text => @graphdata
  end
end
