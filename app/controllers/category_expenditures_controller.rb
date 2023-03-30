class CategoryExpendituresController < ApplicationController
  before_action :set_category_expenditure, only: %i[show edit update destroy]

  # GET /category_expenditures or /category_expenditures.json
  def index
    @category_expenditures = CategoryExpenditure.all
  end

  # GET /category_expenditures/1 or /category_expenditures/1.json
  def show; end

  # GET /category_expenditures/new
  def new
    @category_expenditure = CategoryExpenditure.new
  end

  # GET /category_expenditures/1/edit
  def edit; end

  # POST /category_expenditures or /category_expenditures.json
  def create
    @category_expenditure = CategoryExpenditure.new(category_expenditure_params)

    respond_to do |format|
      if @category_expenditure.save
        format.html do
          redirect_to category_expenditure_url(@category_expenditure),
                      notice: 'Category expenditure was successfully created.'
        end
        format.json { render :show, status: :created, location: @category_expenditure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category_expenditure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_expenditures/1 or /category_expenditures/1.json
  def update
    respond_to do |format|
      if @category_expenditure.update(category_expenditure_params)
        format.html do
          redirect_to category_expenditure_url(@category_expenditure),
                      notice: 'Category expenditure was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @category_expenditure }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category_expenditure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_expenditures/1 or /category_expenditures/1.json
  def destroy
    @category_expenditure.destroy

    respond_to do |format|
      format.html { redirect_to category_expenditures_url, notice: 'Category expenditure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category_expenditure
    @category_expenditure = CategoryExpenditure.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_expenditure_params
    params.fetch(:category_expenditure, {})
  end
end
