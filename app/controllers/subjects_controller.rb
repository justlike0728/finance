class SubjectsController < ApplicationController

	before_action :find_subject only: [:show, :create, :edit, :destroy]

	def index
		@subjects = Subject.all.order(created_at: :desc)
	end

	def new
		@subject = Subject.new
	end

	def create
		@subject = Subject.new(subject_params)

		if @subject.save
			redirect_to subjects_path
			flash[:notice] = '新增成功'
		else
			render :new
		end
	end


	private
	def subject_params
		params.require(:subject).permit(:title)
	end

	def find_subject
		@subject = Subject.find_by(id: params[:id])
	end

end
