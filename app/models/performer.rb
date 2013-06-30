class Performer < ActiveRecord::Base
  attr_accessible :name, :description, :soundcloud_url
  validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  belongs_to :user, inverse_of: :performer
end
