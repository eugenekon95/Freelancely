class JobsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_job, except:[:new, :create]
  before_action :is_authorised, only: [:edit, :update]
  def new
    @job = current_user.jobs.build
    @categories = Category.all
  end

  def create
    @job = current_user.jobs.build(job_params)
    if @job.save
      @job.pricings.create(Pricing.pricing_types.values.map{|ptype| {pricing_type: ptype}})
      redirect_to edit_job_path(@job), notice: "Save"
      
    else
      redirect_to request.referrer, flash: { error: @job.errors.full_messages }
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def set_job
    @job = Job.find(params[:id])
    
  end

  def is_authorised
    redirect_to root_path, alert: "Access denied" unless current_user.id == @job.user_id
  end

  def job_params
    params.require(:job).permit(:title, :video, :active, :category_id, :has_single_pricing,
                                  pricings_attributes:[:id, :title, :description, :completion_time, :price, :pricing_type])
  end

end
