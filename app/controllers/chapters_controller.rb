class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
  end

  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      redirect_to  chapter_path(@chapter)
    else
      render :new
    end
  end

  def edit
  end

  def show
    @chapter = Chapter.find(params[:id])
    @sections = Section.all
  end

private
  def chapter_params
    params.require(:chapter).permit(:title)
  end
end
