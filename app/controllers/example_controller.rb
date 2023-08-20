class ExamplesController < ApplicationController

  ##
  # Show examples list
  def index
    @example = Example.all
  end

  ##
  # Show new example form
  def new
    @example = Example.new
  end

  ##
  # Crate new example
  def create
    @example = Example.new(example_params)
    @example.save
  end

  ##
  # Show an example form
  def edit
    @example = Example.find_by!(id: params[:id])
  end

  ##
  # Update an example
  def update
    @example = Example.find_by!(id: params[:id])
    @example.update(example_params)
    return redirect_to(examples_path)
  end

  
  def example_params
    params.require(:example).permit(:test)
  end

end
