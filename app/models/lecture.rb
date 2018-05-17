class Lecture < ApplicationRecord

  mount_uploader :attachment, AttachmentUploader

  acts_as_votable
  # User Avatar Validation
  validates_integrity_of  :attachment
  validates_processing_of :attachment

  belongs_to :course

end
