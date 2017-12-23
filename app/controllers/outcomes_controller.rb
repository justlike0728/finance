class OutcomesController < ApplicationController

	before_action :find_outcome, only: [:show, :new, :edit, :update, :destroy]

	def index
		@outcomes = Outcome.all
	end

	def new
		@outcome = Outcome.new
	end



	def create
		@outcome = Outcome.new(outcome_params)

		if @outcome.save
			redirect_to outcomes_path
			flash[:notice] = '新增成功！'
		else
			render :new
		end
	end



	private
	def outcome_params
		params[:outcome].permit(:date, :department, :sub_title, :explan, :money, :plan_code, :receipt, :asterisk, :people)
	end

	def find_outcome
		@outcome = Outcome.find_by(id: params[:id])
	end

end
