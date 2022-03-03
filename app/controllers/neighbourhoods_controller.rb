class NeighbourhoodsController < ApplicationController
  before_action :set_neighbourhood, only: %i[show edit update destroy]

  # GET /neighbourhoods or /neighbourhoods.json
  def index
    @neighbourhoods = Neighbourhood.all
  end

  # GET /neighbourhoods/1 or /neighbourhoods/1.json
  def show
    @neighbourhood = Neighbourhood.find(params[:id])
  end

  # GET /neighbourhoods/new
  def new
    @neighbourhood = Neighbourhood.new
  end

  # GET /neighbourhoods/1/edit
  def edit; end

  # POST /neighbourhoods or /neighbourhoods.json
  def create
    @neighbourhood = Neighbourhood.new(neighbourhood_params)

    respond_to do |format|
      if @neighbourhood.save
        format.html do
          redirect_to neighbourhood_url(@neighbourhood),
                      notice: "Neighbourhood was successfully created."
        end
        format.json { render :show, status: :created, location: @neighbourhood }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @neighbourhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neighbourhoods/1 or /neighbourhoods/1.json
  def update
    respond_to do |format|
      if @neighbourhood.update(neighbourhood_params)
        format.html do
          redirect_to neighbourhood_url(@neighbourhood),
                      notice: "Neighbourhood was successfully updated."
        end
        format.json { render :show, status: :ok, location: @neighbourhood }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @neighbourhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neighbourhoods/1 or /neighbourhoods/1.json
  def destroy
    @neighbourhood.destroy

    respond_to do |format|
      format.html do
        redirect_to neighbourhoods_url, notice: "Neighbourhood was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_neighbourhood
    @neighbourhood = Neighbourhood.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def neighbourhood_params
    params.require(:neighbourhood).permit(:name, :polygons)
  end
end
