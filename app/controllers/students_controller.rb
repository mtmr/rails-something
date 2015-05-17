class StudentsController < ApplicationController
	def new
	end
	def index
		@students = Student.all
	end
	def create
		@students = Student.new(students_params)
		if @students.save then
		redirect_to @students
		else
			render 'new'
		end
	end
	#separate validation.. Modularity FTW
	private 
	def students_params
		params.require(:students).permit(:name, :roll, :mark1, :mark2)
		#apparently ruby doesn't like uppercase initial char in var names
	end
	def show
		@students = Student.find(params[:id])
	end
end
