class Video < ActiveRecord::Base
  has_many :comments, as: :media

  validates :youtube_id, presence: :true
end
