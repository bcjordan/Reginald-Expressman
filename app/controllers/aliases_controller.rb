class AliasesController < ApplicationController
  def index
    @aliases = Alias.all
  end

  def show
    @alias = Alias.find(params[:id])
  end

  def new
    @alias = Alias.new
  end

  def create
    @alias = Alias.new(params[:alias])
    if @alias.save
      redirect_to @alias, :notice => "Successfully created alias."
    else
      render :action => 'new'
    end
  end

  def edit
    @alias = Alias.find(params[:id])
  end

  def update
    @alias = Alias.find(params[:id])
    if @alias.update_attributes(params[:alias])
      redirect_to @alias, :notice  => "Successfully updated alias."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @alias = Alias.find(params[:id])
    @alias.destroy
    redirect_to aliases_url, :notice => "Successfully destroyed alias."
  end
end
