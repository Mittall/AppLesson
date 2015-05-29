class Question < ActiveRecord::Base
  belongs_to :lesson
  has_many :answers, :dependent => :destroy

  validates :name, :presence => true
  validates :content, :presence => true

  has_attached_file :que_image,
                    :path => ":rails_root/public/que_image/:id/:filename",
                    :url  => "/que_image/:id/:filename"
			  						#:processors => [:ffmpeg],
										#:styles => { 
											#					:geometry => {:format => 'mp4', :auto_rotate => true} 


  #do_not_validate_attachment_file_type :image

	validates_attachment :que_image,
  :content_type => {:content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg','image/png', 'image/tif', 'image/gif', 'video/quicktime', 'video/avi', 'video/flv', 'video/mp4', 'video/mov'],
										:message => "has to be in a proper format"}, 
										:size => { :in => 0..5.megabytes }

  accepts_nested_attributes_for :answers, :reject_if => :all_blank, allow_destroy: true, :update_only => true
end
