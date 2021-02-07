class PlansController < ApplicationController
  before_action :set_plan, only: %i[ show edit update destroy ]
  protect_from_forgery

  # GET /plans or /plans.json
  def index
    @plans = Plan.all
    render json:@plans
  end

  # GET /plans/1 or /plans/1.json
  def show
  end

  # GET /plans/new
  def new
    @plan = Plan.new
  end

  # GET /plans/1/edit
  def edit
  end

  # POST /plans or /plans.json
  def create
    @plan = Plan.new(plan_params)

    respond_to do |format|
      if @plan.save
        format.html { redirect_to @plan, notice: "Plan was successfully created." }
        format.json { render :show, status: :created, location: @plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plans/1 or /plans/1.json
  def update
    if @plan.update(plan_params)
      render json: { status: 'SUCCESS', message: 'Updated the plan', data: @plan }
    else
      render json: { status: 'SUCCESS', message: 'Not updated', data: @plan.errors }
    end
  end

  # DELETE /plans/1 or /plans/1.json
  def destroy
    @plan.destroy
    render json: { status: 'SUCCESS', message: 'Deleted the plan', data: @paln }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      @plan = Plan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plan_params
      params.require(:plan).permit(:name, :match_style)
    end
end
