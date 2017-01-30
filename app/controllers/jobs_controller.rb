class JobsController < ApplicationController
	def index
		@job = Job.all
	end

	def new
		@job = Job.new
	end

	def create
		Job.create(job_params)
		redirect_to root_path
	end

	private

	def job_params
		params.require(:job).permit(:title, :description, :company, :category, :facebook, :twitter, :application)
	end
end
