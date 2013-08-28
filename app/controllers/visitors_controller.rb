class VisitorsController < ApplicationController
	def new
    flash[:notice] = 'Notice here'
    flash[:alert] = 'Alert here'
	end
end
