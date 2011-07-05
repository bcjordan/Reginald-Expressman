class PatternmatchesController < ApplicationController
  def index
    @patternmatches = Patternmatch.all
  end

  def show
    @patternmatch = Patternmatch.find(params[:id])
  end

  def new
    @patternmatch = Patternmatch.new
  end

  def create
    @patternmatch = Patternmatch.new(params[:patternmatch])
    if @patternmatch.save
      redirect_to @patternmatch, :notice => "Successfully created patternmatch."
    else
      render :action => 'new'
    end
  end

  def edit
    @patternmatch = Patternmatch.find(params[:id])
  end

  def update
    @patternmatch = Patternmatch.find(params[:id])
    if @patternmatch.update_attributes(params[:patternmatch])
      redirect_to @patternmatch, :notice  => "Successfully updated patternmatch."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @patternmatch = Patternmatch.find(params[:id])
    @patternmatch.destroy
    redirect_to patternmatches_url, :notice => "Successfully destroyed patternmatch."
  end
end
