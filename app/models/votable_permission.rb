class VotablePermission < ActiveRecord::Base
  belongs_to :votable
  belongs_to :user
end
