class MaterialsController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  def list
    @material_pages, @materials = paginate :materials, :per_page => 10
  end

  def show
    @material = Material.find(params[:id])
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(params[:material])
    if @material.save
      flash[:notice] = 'Material was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @material = Material.find(params[:id])
  end

  def update
    @material = Material.find(params[:id])
    if @material.update_attributes(params[:material])
      flash[:notice] = 'Material was successfully updated.'
      redirect_to :action => 'show', :id => @material
    else
      render :action => 'edit'
    end
  end

  def destroy
    Material.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
