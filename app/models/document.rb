class Document < ActiveRecord::Base
  belongs_to :lesson

  validates :title, :presence => true
  validates :image, :presence => true

  has_attached_file :image,
                    :path => ":rails_root/public/images/:id/:filename",
                    :url  => "/images/:id/:filename"
			  						#:processors => [:ffmpeg],
										#:styles => { 
											#					:geometry => {:format => 'mp4', :auto_rotate => true} 
												#			 }

  #do_not_validate_attachment_file_type :image

	validates_attachment :image,
                       :content_type => {:content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg','image/png', 'image/tif', 'image/gif', 'video/quicktime', 'video/avi', 'video/flv', 'video/mp4', 'video/mov'],
	                     :message => "has to be in a proper format"}, 
										   :size => { :in => 0..5.megabytes }
end
