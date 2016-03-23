class Friendship < ActiveRecord::Base
  belongs_to :user
  # friend is another user
  belongs_to :friend, :class_name => "User"
end
