class LessonsController < ApplicationController
  def edit
  end

  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @section.save

      redirect_to chapter_section_path(@section.chapter, @section)
    else
      render :new
    end
  end

  def index
  end

  def update
    next_lesson_id = Lesson.find(params[:id]).id + 1
    lesson_all_length = Lesson.all.length
    if next_lesson_id < lesson_all_length
      @lesson = Lesson.find(next_lesson_id)
    else
      @lesson = Lesson.find(params[:id])
      flash[:alert] = "No more lessons... Navigate to sections"
    end
    # binding.pry
    redirect_to section_lesson_path(@lesson.section, @lesson)
  end

  def show
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

private
  def lesson_params
    params.require(:lesson).permit(:name,:content)
  end
end
