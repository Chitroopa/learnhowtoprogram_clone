class SectionsController < ApplicationController
  def index
  end

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new
  end

  def create

    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new(section_params)

    if @section.save
      redirect_to chapter_path(@chapter)
    else
      render :new
    end
  end

  def edit
  end

  def show
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:id])
  end

private
  def section_params
    params.require(:section).permit(:heading)
  end
end
