class VaccinationsController < ApplicationController
  # GET /vaccinations
  # GET /vaccinations.json
  def index
    if params[:person_id]
      @person = Person.find(params[:person_id])
      @vaccinations = @person.vaccinations
    else
      @vaccinations = Vaccination.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vaccinations }
    end
  end

  # GET /vaccinations/1
  # GET /vaccinations/1.json
  def show
    @vaccination = Vaccination.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vaccination }
    end
  end

  # GET /vaccinations/new
  # GET /vaccinations/new.json
  def new
    raise 'No person defined' unless params[:person_id]

    @person = Person.find(params[:person_id])
    @vaccination = @person.vaccinations.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vaccination }
    end
  end

  # GET /vaccinations/1/edit
  def edit
    @vaccination = Vaccination.find(params[:id])
    @person = @vaccination.person

  end

  # POST /vaccinations
  # POST /vaccinations.json
  def create
    if params[:person_id]
      @person = Person.find(params[:person_id])
      @vaccination =@person.vaccinations.new(params[:vaccination])
    respond_to do |format|
      if @vaccination.save
        format.html { redirect_to @vaccination, notice: 'Vaccination was successfully created.' }
        format.json { render json: @vaccination, status: :created, location: @vaccination }
      else
        format.html { render action: "new" }
        format.json { render json: @vaccination.errors, status: :unprocessable_entity }
      end
    end
  end 
 end

  # PUT /vaccinations/1
  # PUT /vaccinations/1.json
  def update
    @vaccination = Vaccination.find(params[:id])

    respond_to do |format|
      if @vaccination.update_attributes(params[:vaccination])
        format.html { redirect_to @vaccination, notice: 'Vaccination was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vaccination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccinations/1
  # DELETE /vaccinations/1.json
  def destroy
#    if params[:person_id]

#      @vaccination =@person.vaccinations.find(params[:id])
    @vaccination = Vaccination.find(params[:id])
    @person = @vaccination.person
    @vaccination.destroy

    respond_to do |format|
      format.html { redirect_to person_vaccinations_path(@person)}
      format.json { head :no_content }
    end

  end
end
