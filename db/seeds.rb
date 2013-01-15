# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.where(:job_count => 0).all.destroy
Job.where(:startup_type => 'Hacker').all.destroy
Job.where(:startup_type => 'Hustler').all.destroy
Job.where(:startup_type => 'Designer').all.destroy

FiveHundredPixels.seed
Facebook.seed
MediaCompany.seed
Shopify.seed
SportsHedge.seed
Uniiverse.seed
WaveAccounting.seed

jobs = { 
  "Hacker" => Hackers::HACKERS,
  "Hustler" => Hustlers::HUSTLERS,
  "Designer" => Designers::DESIGNERS
}

jobs.each do |k, v|

  v.each do |job|
    company_name = job[:company]
    company = Company.where(:name => company_name).first

    if !company.present? && company_name.present?
      company =  Company.create({
        name: company_name
      })
      company.save
    else
      Job.where(:title => job[:title]).all.destroy
    end

    job_instance = Job.create(job.except('company'))
    job_instance.startup_type = k
    job_instance.company = company if company.present?
    job_instance.save
  end

end