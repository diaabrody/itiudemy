class Lecture < ApplicationRecord

  mount_uploader :attachment, AttachmentUploader

  # User Avatar Validation
  validates_integrity_of  :attachment
  validates_processing_of :attachment

  private
  def avatar_size_validation
    errors[:attachment] << "should be less than 500KB" if attachment.size > 0.5.megabytes
  end

  belongs_to :course

end
