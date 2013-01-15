class HackerNews
  include Mongoid::Document

  JOBS = [
    {
      title: 'JavaScript Engineer Interns',
      company: 'Buffer',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'joel@bufferapp.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'       
    },
    {
      title: 'DevOps Engineer Interns',
      company: 'Buffer',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'joel@bufferapp.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'       
    },
    {
      title: 'UI Design Intern',
      company: 'MindSnacks',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jobs@mindsnacks.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Art-Design Intern',
      company: 'MindSnacks',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jobs@mindsnacks.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Engineering Interns',
      company: 'Mixpanel',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'tim@mixpanel.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Software Developer Intern',
      company: 'Khan Academy',
      startup_type: 'hn_jan_2013',
      apply_link: 'https://www.khanacademy.org/careers',
      country: 'US',
      state: 'CA',
      city: 'Mountain View'
    },
    {
      title: 'Mobile Developer Intern',
      company: 'Khan Academy',
      startup_type: 'hn_jan_2013',
      apply_link: 'https://www.khanacademy.org/careers',
      country: 'US',
      state: 'CA',
      city: 'Mountain View'
    },
    {
      title: 'Front End Developer Intern',
      company: 'Care Thread',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jobs@carethread.com' },
      country: 'US',
      state: 'RI',
      city: 'Providence'
    },
    {
      title: 'Mobile Developer Intern',
      company: 'Care Thread',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jobs@carethread.com' },
      country: 'US',
      state: 'RI',
      city: 'Providence'
    },
    {
      title: 'Back End Developer Intern',
      company: 'Care Thread',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jobs@carethread.com' },
      country: 'US',
      state: 'RI',
      city: 'Providence'
    },
    {
      title: 'Ruby on Rails Developer Intern',
      company: 'Scribd',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jared@scribd.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'JavaScript Developer Intern',
      company: 'Scribd',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jared@scribd.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'iOS Developer Intern',
      company: 'Scribd',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jared@scribd.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Android Developer Intern',
      company: 'Scribd',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jared@scribd.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Machine Learning Developer Intern',
      company: 'Scribd',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jared@scribd.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Back End Intern',
      company: 'Scribd',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jared@scribd.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'DevOps Intern',
      company: 'Scribd',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jared@scribd.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Web Infrastructure Intern',
      company: 'Scribd',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jared@scribd.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Software Engineer Interns',
      company: 'Radius Intelligence',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'jobs@radiusintel.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Elite Finance Software Engineer Interns',
      company: 'Two Sigma',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'dave.hahn@twosigma.com' },
      country: 'US',
      state: 'NY',
      city: 'Manhattan'
    },
    {
      title: 'Biology Software Engineer Intern',
      company: 'Ginkgo BioWorks',
      startup_type: 'hn_jan_2013',
      apply_link: 'https://ginkgo.resumetracker.com/public/job_detail/83',
      country: 'US',
      state: 'MA',
      city: 'Boston'
    },
    {
      title: 'Sales Intern',
      company: 'Localist',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://www.localist.com/about/careers',
      country: 'US',
      state: 'MD',
      city: 'Maryland'
    },
    {
      title: 'Marketing Intern',
      company: 'Localist',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://www.localist.com/about/careers',
      country: 'US',
      state: 'MD',
      city: 'Maryland'
    },
    {
      title: 'Support Intern',
      company: 'Localist',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://www.localist.com/about/careers',
      country: 'US',
      state: 'MD',
      city: 'Maryland'
    },
    {
      title: 'Ruby on Rails Developer Intern',
      company: 'Localist',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://www.localist.com/about/careers',
      country: 'US',
      state: 'MD',
      city: 'Maryland'
    },
    {
      title: 'Software Engineer Intern',
      company: 'Dropcam',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'greg@dropcam.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Hardware Engineer Intern',
      company: 'Dropcam',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'greg@dropcam.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Product Management Intern',
      company: 'Dropcam',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'greg@dropcam.com' },
      country: 'US',
      state: 'CA',
      city: 'San Francisco'
    },
    {
      title: 'Software Engineer Intern',
      company: 'Prezi',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://prezi.com/jobs/oJw1VfwV/',
      country: 'EU',
      state: 'HU',
      city: 'Budapest'
    },
    {
      title: 'Machine Learning Engineer Intern',
      company: 'CB Insights',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://www.cbinsights.com/jobs/',
      country: 'US',
      state: 'NY',
      city: 'New York'
    },
    {
      title: 'Full Stack Developer Intern',
      company: 'CB Insights',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://www.cbinsights.com/jobs/',
      country: 'US',
      state: 'NY',
      city: 'New York'
    },
    {
      title: 'Tech Industry Analyst Intern',
      company: 'CB Insights',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://www.cbinsights.com/jobs/',
      country: 'US',
      state: 'NY',
      city: 'New York'
    },
    {
      title: 'Product Adoption Manager Intern',
      company: 'CB Insights',
      startup_type: 'hn_jan_2013',
      apply_link: 'http://www.cbinsights.com/jobs/',
      country: 'US',
      state: 'NY',
      city: 'New York'
    },
    {
      title: 'OS/Virtualization Developer Intern',
      company: 'MokaFive',
      startup_type: 'hn_jan_2013',
      apply_link: { :email => 'gthomas@mokafive.com' },
      country: 'US',
      state: 'CA',
      city: 'Redwood City'
    }
   ]

   def self.seed
    Company.where(:startup_type => 'hn_jan_2013').all.destroy
    Job.where(:startup_type => 'hn_jan_2013').all.destroy

    JOBS.each do |hacker|
      company = Company.where(:name => hacker[:company]).first

      if company.nil?
        apply_link = apply_link.is_a?(Hash) ? hacker[:apply_link][:email] : hacker[:apply_link]

        company =  Company.create({
          description: '',
          name: hacker[:company],
          link: apply_link
        })
        company.save
      end

      job = Job.create(hacker)
      job.in_newsletter = true
      job.company = company
      job.save
    end
  end
end