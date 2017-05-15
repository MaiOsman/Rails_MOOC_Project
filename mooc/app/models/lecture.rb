class Lecture < ActiveRecord::Base
  belongs_to :course
  has_many   :comments

  validates :content, presence: true
  validates :attachment, presence: true
  validates :course_id, presence: true

  acts_as_votable
  mount_uploader :attachment, AttachmentUploader

end
