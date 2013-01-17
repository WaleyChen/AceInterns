class JobsController < ApplicationController

  def create
    @job = Job.new(params[:job])
    @job.save
    redirect_to :controller => 'application', :action => 'aceinterns'
  end

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def hn_jan_2013
    if params[:sort].nil? || params[:sort] == 'company'
      @jobs = Job.where(:startup_type => 'hn_jan_2013').asc(:company_name)
    elsif params[:sort] == 'title'
      @jobs = Job.where(:startup_type => 'hn_jan_2013').asc(:title)
    else

    end

    render :layout => 'hn_jobs'
  end
end
