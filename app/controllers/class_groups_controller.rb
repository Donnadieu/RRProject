class ClassGroupsController < ApplicationController


  def index
    @cG = ClassGroup.all
  end

  def show
  end

  def new
    @cG = ClassGroup.new
  end

  def update
  end

  def create
  end

  def edit
  end

  def destroy
  end

  private


end
