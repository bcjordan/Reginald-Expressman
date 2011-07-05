class NamedaliasesController < ApplicationController
  def index
    @namedaliases = Namedalias.all
  end

  def show
    @namedalias = Namedalias.find(params[:id])
  end

  def new
    @namedalias = Namedalias.new
  end

  def go
    redirect_to Namedalias.find_by_shortname(params[:shortname]).url
  end


  def create
    @namedalias = Namedalias.new(params[:namedalias])
    if @namedalias.save
      redirect_to @namedalias, :notice => "Successfully created namedalias."
    else
      render :action => 'new'
    end
  end

  def edit
    @namedalias = Namedalias.find(params[:id])
  end

  def update
    @namedalias = Namedalias.find(params[:id])
    if @namedalias.update_attributes(params[:namedalias])
      redirect_to @namedalias, :notice  => "Successfully updated namedalias."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @namedalias = Namedalias.find(params[:id])
    @namedalias.destroy
    redirect_to namedaliases_url, :notice => "Successfully destroyed namedalias."
  end
end
