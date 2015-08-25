class CaseCategoriesController < ApplicationController
  before_action :set_case_category, only: [:show, :edit, :update, :destroy]

  # GET /case_categories
  # GET /case_categories.json
  def index
    @case_categories = CaseCategory.all
  end

  # GET /case_categories/1
  # GET /case_categories/1.json
  def show
  end

  # GET /case_categories/new
  def new
    @case_category = CaseCategory.new
  end

  # GET /case_categories/1/edit
  def edit
  end

  # POST /case_categories
  # POST /case_categories.json
  def create
    @case_category = CaseCategory.new(case_category_params)

    respond_to do |format|
      if @case_category.save
        format.html { redirect_to @case_category, notice: 'Case category was successfully created.' }
        format.json { render :show, status: :created, location: @case_category }
      else
        format.html { render :new }
        format.json { render json: @case_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_categories/1
  # PATCH/PUT /case_categories/1.json
  def update
    respond_to do |format|
      if @case_category.update(case_category_params)
        format.html { redirect_to @case_category, notice: 'Case category was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_category }
      else
        format.html { render :edit }
        format.json { render json: @case_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_categories/1
  # DELETE /case_categories/1.json
  def destroy
    @case_category.destroy
    respond_to do |format|
      format.html { redirect_to case_categories_url, notice: 'Case category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_category
      @case_category = CaseCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_category_params
      params.require(:case_category).permit(:name)
    end
end
