class FormulasController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  def list
    @formula_pages, @formulas = paginate :formulas, :per_page => 10
  end

  def show
    @formula = Formula.find(params[:id])
  end

  def new
    @formula = Formula.new
  end

  def create
    @formula = Formula.new(params[:formula])
    if @formula.save
      flash[:notice] = 'Formula was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @formula = Formula.find(params[:id])
  end

  def update
    @formula = Formula.find(params[:id])
    if @formula.update_attributes(params[:formula])
      flash[:notice] = 'Formula was successfully updated.'
      redirect_to :action => 'show', :id => @formula
    else
      render :action => 'edit'
    end
  end

  def destroy
    Formula.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
