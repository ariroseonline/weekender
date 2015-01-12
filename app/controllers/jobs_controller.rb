class JobsController < ApplicationController
	def index
		@jobs = Job.all
	end

	def new
		@job = Job.new
		@categories =  Category.all.map{|category| category.name}
	end

	def create 
		Job.create(job_params)
  	redirect_to jobs_path
	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:id])
		@job.update_attributes(job_params)
		redirect_to jobs_path
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
		redirect_to jobs_path
	end

	def filter 

	end

	private

	def job_params
		params.require(:job).permit(:title, :description, :category_id)
	end
end
