class Listing < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "/images/image.jpeg"
	  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
                   :storage        => :s3                                                 ,
                      :s3_credentials => {:bucket            => ENV['AWS_BUCKET'           ],
                                          :access_key_id     => ENV['AWS_ACCESS_KEY_ID'    ],
                                          :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']},
                      :s3_protocol    => "https"                                             ,
                      :s3_host_name   => "s3-us-west-2.amazonaws.com"   

end
