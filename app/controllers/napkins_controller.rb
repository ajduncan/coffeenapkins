class NapkinsController < ApplicationController

  def new
  	@napkin = Napkin.new
  end

  def create
  	@napkin = Napkin.new(napkin_params)

  	if @napkin.save
  	  redirect_to @napkin
  	else
  	  render 'new'
  	end
  end

  def edit
  	@napkin = Napkin.find(params[:id])
  end

  def update
  	@napkin = Napkin.find(params[:id])

  	if @napkin.update(napkin_params)
  	  redirect_to @napkin
  	else
  	  render 'edit'
  	end
  end

  def destroy
  	@napkin = Napkin.find(params[:id])
  	@napkin.destroy

  	redirect_to napkins_path
  end

  def show
    @napkin = Napkin.find(params[:id])
  end

  def index
  	@napkins = Napkin.all
  end

  private
    def napkin_params
      params.require(:napkin).permit(:title, :text)
    end

end
