class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :option
  belongs_to :round
end
