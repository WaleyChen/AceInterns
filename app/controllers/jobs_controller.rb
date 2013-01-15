class JobsController < ApplicationController

  def create
    @job = Job.new(params[:job])
    @job.save
    redirect_to :controller => 'application', :action => 'aceinterns'
  end

  def index
    respond_to do |format|
      format.js{ render :none => true }
    end
  end

  def new
    @job = Job.new
  end


  def hn_jan_2013
    @jobs = Job.where(:startup_type => 'hn_jan_2013').asc(:company_name)
    render :layout => 'hn_jobs'
  end
end
