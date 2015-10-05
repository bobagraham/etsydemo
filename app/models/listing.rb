class Listing < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "/images/image.jpeg"
	  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	      :storage => :s3,
		  :bucket => "etsydemo11",
		  :s3_credentials => {
		      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    		  :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
		  }


end
