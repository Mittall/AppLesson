class Lesson < ActiveRecord::Base
  has_many :documents, :dependent => :destroy
  has_many :questions, :dependent => :destroy

  validates :name, :presence => true
  validates :category, :presence => true
  validates :level, :presence => true

  accepts_nested_attributes_for :documents, :reject_if => :all_blank, allow_destroy: true, :update_only => true
  accepts_nested_attributes_for :questions, :reject_if => :all_blank, allow_destroy: true, :update_only => true
end
