class VisitorsController < ApplicationController
	def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(visitor_params)
    if @visitor.valid?
      @visitor.update_spreadsheet
      flash[:notice] = "Choose #{@visitor.favorite}."
      render :new
    else
      render :new
    end
  end

  private
  def visitor_params
    params.require(:visitor).permit(:favorite, :comment)
  end
end
