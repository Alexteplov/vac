class StatistController < ApplicationController
  # GET /people
  # GET /people.json
  def index
#    @people = Person.order('id desc')
    @st_count = Person.count
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @statist }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
#    @person = Person.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @statist }
    end
  end

  # GET /people/new
  # GET /people/new.json
  def new
#    @person = Person.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @statist }
    end
  end

  # GET /people/1/edit
  def edit
#    @person = Person.find(params[:id])
  end

  # POST /people
  # POST /people.json
  def create
 #   @person = Person.new(params[:person])

    respond_to do |format|
      if @statist.save
        format.html { redirect_to statist_path, notice: 'Person was successfully created.' }
        format.json { render json: @statist, status: :created, location: @statist }
      else
        format.html { render action: "new" }
        format.json { render json: @statist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
#    @person = Person.find(params[:id])

    respond_to do |format|
      if @statist.update_attributes(params[:satist])
        format.html { redirect_to people_path, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @statist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
#    @person = Person.find(params[:id])
#    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end
end
