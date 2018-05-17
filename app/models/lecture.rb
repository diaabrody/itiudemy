class Lecture < ApplicationRecord

  mount_uploader :attachment, AttachmentUploader

  acts_as_votable
  # User Avatar Validation
  validates_integrity_of  :attachment
  validates_processing_of :attachment
  has_and_belongs_to_many :users
  belongs_to :course

end
