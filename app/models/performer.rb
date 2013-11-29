class Performer < ActiveRecord::Base
  attr_accessible :name, :description, :soundcloud_url
  validates_presence_of :name,
                    :description,
                    :user_id
  belongs_to :user, inverse_of: :performer
end
