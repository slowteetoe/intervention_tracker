class InterventionsController < ApplicationController
  # GET /interventions
  # GET /interventions.json
  def index
    @interventions = Intervention.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interventions }
    end
  end

  # GET /interventions/1
  # GET /interventions/1.json
  def show
    @intervention = Intervention.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intervention }
    end
  end

  # GET /interventions/new
  # GET /interventions/new.json
  def new
    @intervention = Intervention.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intervention }
    end
  end

  # GET /interventions/1/edit
  def edit
    @intervention = Intervention.find(params[:id])
  end

  # POST /interventions
  # POST /interventions.json
  def create
    @intervention = Intervention.new(params[:intervention])

    respond_to do |format|
      if @intervention.save
        format.html { redirect_to @intervention, notice: 'Intervention was successfully created.' }
        format.json { render json: @intervention, status: :created, location: @intervention }
      else
        format.html { render action: "new" }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interventions/1
  # PUT /interventions/1.json
  def update
    @intervention = Intervention.find(params[:id])

    respond_to do |format|
      if @intervention.update_attributes(params[:intervention])
        format.html { redirect_to @intervention, notice: 'Intervention was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interventions/1
  # DELETE /interventions/1.json
  def destroy
    @intervention = Intervention.find(params[:id])
    @intervention.destroy

    respond_to do |format|
      format.html { redirect_to interventions_url }
      format.json { head :no_content }
    end
  end
end
