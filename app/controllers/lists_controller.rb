class ListsController < ApplicationController
 
 
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    #shows a pre-filled form to edit the page
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
   if @list.update(list_params)
      #success
      redirect_to list_path(@list)
    else
      #failed update
      render :edit
    end
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save 
      #success
      redirect_to lists_path
    else
      #fail
      render :new
    end
  end

  def completed
    @list = List.find(params[:id])
  end

  def destroy
    List.find(params[:id]).destroy
    redirect_to lists_path
  end

  private
  #strong parameters
  def list_params
    params.require(:list).permit(:title, :complete, :priority, :description)
  end
end

