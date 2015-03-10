class SummaryController < ApplicationController
  def index
  	@summarys = Summarys.all
  	authorize @summarys
  end

  def new
  	@summary = Summary.new
  	authorize @summary
  end

  def show
  	@summary = Summary.find(params[:id])
      @summarys = @post.summarys
  	authorize @summary
  end

  def edit
  end
end
