class PeopleController < ApplicationController
  def index
  	@people = Person.all
  end

  def show
  	@people = Person.find(params[:id])
  end

  def new
  	@people = Person.new
  end

  def edit
		@people = Person.find(params[:id])
  end

  def create
  	@people = Person.new(params[:id])

  	if @people.save
      redirect_to person_path(@people)
    else
      render :new
  	end
	end
end