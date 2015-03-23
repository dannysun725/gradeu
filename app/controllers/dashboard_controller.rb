class DashboardController < ApplicationController

   before_action :authenticate_user!

  def index
     @classes = Classgroup.all
     @students = Student.all

     @studentavg = @students.sort_by(&:average).first(5)

     #Assignments Widgets
     @graded = Assignment.where.not(grade: nil)
     @ungraded = Assignment.where grade: nil
     #--------------------
  end

  def show
  end
end
