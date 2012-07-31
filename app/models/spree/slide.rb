class Spree::Slide < ActiveRecord::Base
  attr_accessible :name, :body, :link_url, :image, :published

  scope :published, where(:published => true)

  if Rails.env.production?
    has_attached_file :image,
                      :storage => 's3',
                      :s3_credentials => Rails.root.join('config', 's3.yml')
  else
    has_attached_file :image
  end

end
