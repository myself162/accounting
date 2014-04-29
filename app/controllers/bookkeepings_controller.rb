class BookkeepingsController < ApplicationController

  def index
    @bookkeeping = Bookkeeping.all  
  end

  def show
    @bookkeeping = Bookkeeping.find(params[:id])
  end

  def new
    @bookkeeping = Bookkeeping.new
  end

  def create
    @bookkeeping = Bookkeeping.new(bookkeeping_params)
    @bookkeeping.save
    redirect_to bookkeepings_path
  end

  def edit
    @bookkeeping = Bookkeeping.find(params[:id])
  end

  def update
    @bookkeeping = Bookkeeping.find(params[:id])
    if @bookkeeping.update(bookkeeping_params)
      redirect_to bookkeeping_path(@bookkeeping)
    else
      render :edit
    end
  end

  def destroy
    @bookkeeping = Bookkeeping.find(params[:id])
    @bookkeeping.destroy
    redirect_to bookkeepings_path
  end


  private

  def bookkeeping_params
    params.require(:bookkeeping).permit(:title, :description)
  end

end
