module JobHelper
  def country_select_tag
    any_country_link = jobs_url(params.merge({ :country => 'any' }))
    canada_link = jobs_url(params.merge({ :country => 'canada' }))
    usa_link = jobs_url(params.merge({ :country => 'usa' }))

    selected_option = any_country_link

    if params[:country] == 'canada'
      selected_option = canada_link
    elsif params[:country] == 'usa'
      selected_option = usa_link
    end

    country_options = options_for_select([ ['Any Country', any_country_link], 
                                                                       [ 'Canada', canada_link ], 
                                                                       [ 'USA', usa_link ] ], 
                                                                     selected_option)

    select_tag :country_options, country_options, :id => 'country'
  end
end
