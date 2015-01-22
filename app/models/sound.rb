class Sound < ActiveRecord::Base
  has_many :comments, as: :media
end
