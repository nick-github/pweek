class BabyAnimalsController < ApplicationController
  before_action :set_baby_animal, only: [:show, :edit, :update, :destroy]

  # GET /baby_animals
  # GET /baby_animals.json
  def index
    @baby_animals = BabyAnimal.all
  end

  # GET /baby_animals/1
  # GET /baby_animals/1.json
  def show
  end

  # GET /baby_animals/new
  def new
    @baby_animal = BabyAnimal.new
  end

  # GET /baby_animals/1/edit
  def edit
  end

  # POST /baby_animals
  # POST /baby_animals.json
  def create
    @baby_animal = BabyAnimal.new(baby_animal_params)

    respond_to do |format|
      if @baby_animal.save
        format.html { redirect_to @baby_animal, notice: 'Baby animal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @baby_animal }
      else
        format.html { render action: 'new' }
        format.json { render json: @baby_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baby_animals/1
  # PATCH/PUT /baby_animals/1.json
  def update
    respond_to do |format|
      if @baby_animal.update(baby_animal_params)
        format.html { redirect_to @baby_animal, notice: 'Baby animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @baby_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baby_animals/1
  # DELETE /baby_animals/1.json
  def destroy
    @baby_animal.destroy
    respond_to do |format|
      format.html { redirect_to baby_animals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby_animal
      @baby_animal = BabyAnimal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baby_animal_params
      params.require(:baby_animal).permit(:title, :img_url, :description)
    end
end
