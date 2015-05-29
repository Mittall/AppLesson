class Answer < ActiveRecord::Base
  belongs_to :question

  validates :correct_answer, :presence => true
  validates :content, :presence => true

  has_attached_file :ans_image,
                    :path => ":rails_root/public/ans_image/:id/:filename",
                    :url => "/ans_image/:id/:filename"
			  						#:processors => [:ffmpeg],
										#:styles => { 
											#					:geometry => {:format => 'mp4', :auto_rotate => true} 
												#			 }

  #do_not_validate_attachment_file_type :image

	validates_attachment :ans_image,
                       :content_type => {:content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg','image/png', 'image/tif', 'image/gif', 'video/quicktime', 'video/avi', 'video/flv', 'video/mp4', 'video/mov'],
										   :message => "has to be in a proper format"}, 
										   :size => { :in => 0..5.megabytes }
end
