class LessonImageInfo < ActiveRecord::Base
  belongs_to :lesson

  has_attached_file :lesson_image,
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/images/:id/:filename"


  #do_not_validate_attachment_file_type :image

	validates_attachment :lesson_image,
                       :content_type => {:content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg','image/png', 'image/tif', 'image/gif', 'video/mp4'],
	                     :message => "has to be in a proper format"}, 
										   :size => { :in => 0..5.megabytes }
end
