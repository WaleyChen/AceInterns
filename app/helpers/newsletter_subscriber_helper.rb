module NewsletterSubscriberHelper
  def attribute_selected?(newsletter_subscriber, attribute, value, default = false)
    (default && @newsletter_subscriber.send(attribute).nil?) || 
    @newsletter_subscriber.send(attribute).present? && 
    @newsletter_subscriber.send(attribute).include?(value)
  end
end
