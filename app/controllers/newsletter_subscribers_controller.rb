class NewsletterSubscribersController < ActionController::Base
  protect_from_forgery

  def new
    @newsletter_subscriber = NewsletterSubscriber.new
    get_jobs
    render :layout => 'newsletter'
  end

  def create
    @newsletter_subscriber = NewsletterSubscriber.new
    @newsletter_subscriber.email = params[:newsletter_subscriber][:email]
    @newsletter_subscriber.job_category = params[:newsletter_subscriber][:job_category]
    @newsletter_subscriber.job_location = params[:newsletter_subscriber][:job_location]
    @newsletter_subscriber.job_level = params[:newsletter_subscriber][:job_level]
    @newsletter_subscriber.other_preferences = params[:newsletter_subscriber][:other_preferences]

    if !@newsletter_subscriber.save
      flash[:error] = "Please see the errors below."
      get_jobs
      render :action => :new, :layout => 'newsletter'
    end
  end

  def get_jobs
    @hackers = Job.where(:startup_type => 'Hacker').all.to_a.shuffle!
    @hustlers = Job.where(:startup_type => 'Hustler').all.to_a.shuffle!
    @designers = Job.where(:startup_type => 'Designer').all.to_a.shuffle!
    @row_count = [@hackers.count, @hustlers.count, @designers.count].max
  end
end
