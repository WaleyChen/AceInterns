class NewsletterSubscriber
  include Mongoid::Document

  JOB_LEVEL_CHOICES = ['junior', 'intermediate', 'senior']

  field :email
  field :job_location
  field :job_level
  field :other_preferences

  validates_format_of :email, :with => /@/, :message => "please include an email"
  validates_uniqueness_of :email
  validates_presence_of :job_level, :message => "please choose at least one job level"
end
