class JobsController < ApplicationController
	def index
		@job = Job.where('created_at > ?', 30.days.ago).reverse_order
	end

	def new
		@job = Job.new
	end

	def create
		Job.create(job_params)
		redirect_to root_path
	end

	def show
		@job = Job.find(params[:id])
	end

	def programming
		@job = Job.where('created_at > ?', 30.days.ago).reverse_order
	end

	def customer_support
		@job = Job.where('created_at > ?', 30.days.ago).reverse_order
	end

	def design
		@job = Job.where('created_at > ?', 30.days.ago).reverse_order
	end

	def marketing
		@job = Job.where('created_at > ?', 30.days.ago).reverse_order
	end

	def other
		@job = Job.where('created_at > ?', 30.days.ago).reverse_order
	end

	def sales_account_management
		@job = Job.where('created_at > ?', 30.days.ago).reverse_order
	end

	private

	def job_params
		params.require(:job).permit(:title, :description, :company, :category, :facebook, :twitter, :application, :logo)
	end
end
