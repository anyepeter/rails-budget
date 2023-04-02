class ExpendituresController < ApplicationController
  before_action :set_expenditure, only: %i[show edit update destroy]

  # GET /expenditures or /expenditures.json
  def index
    # @expenditures = Expenditure.all
    @expenditures = Category.find(params[:category_id])
  end

  # GET /expenditures/1 or /expenditures/1.json
  def show; end

  # GET /expenditures/new
  def new
    @expenditure = Expenditure.new
    @category = current_user.categories.where.not(id: params[:category_id])
  end

  # POST /expenditures or /expenditures.json
  def create
    @expenditure = current_user.expenditures.build(expenditure_params)
    @category = Category.find(params[:category_id])
    @expenditure.categories << @category
    respond_to do |format|
      if @expenditure.save
        format.html do
          redirect_to category_expenditures_path(@category, @expenditure),
                      notice: 'Expenditure was successfully created.'
        end
        format.json { render :show, status: :created, location: @expenditure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expenditure.errors, status: :unprocessable_entity }
      end
    end
  end

  # # PATCH/PUT /expenditures/1 or /expenditures/1.json
  # def update
  #   respond_to do |format|
  #     if @expenditure.update(expenditure_params)
  #       format.html { redirect_to expenditure_url(@expenditure), notice: 'Expenditure was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @expenditure }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @expenditure.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /expenditures/1 or /expenditures/1.json
  # def destroy
  #   @expenditure.destroy
  #   @category = Category.find(params[:category_id])
  #   respond_to do |format|
  #     format.html { redirect_to categories_path, notice: 'Expenditure was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_expenditure
    @expenditure = Expenditure.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def expenditure_params
    params.require(:expenditure).permit(:name, :amount, category_ids: [])
  end
end
