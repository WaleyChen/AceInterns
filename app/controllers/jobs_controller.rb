class JobsController < ApplicationController

  def create
    @job = Job.new(params[:job])
    @job.save
    redirect_to :controller => 'application', :action => 'aceinterns'
  end

  def index
    @job_asc  = params[:job_asc].nil? || params[:job_asc] == 'true'
    @comp_asc = params[:comp_asc].nil? || params[:comp_asc] == 'true'

    if params[:sort].nil? || params[:sort] == 'title'
      @jobs = @job_asc ? Job.all.asc(:title) : Job.all.desc(:title)
    elsif params[:sort] == 'company'
      @jobs = @comp_asc ? Job.all.asc(:company_name) : Job.all.desc(:company_name)
    elsif params[:sort] == 'location'
      # @jobs = Job.where(:startup_type => 'hn_jan_2013').asc(:title)
    else
    end

    # country
    if params[:country] == 'canada'
      @jobs = @jobs.where(:country => 'CA')
    elsif params[:country] == 'usa'
      @jobs = @jobs.where(:country => 'US')
    end
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
