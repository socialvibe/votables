class Round < ActiveRecord::Base
  belongs_to :votable
  has_many :votes

  def complete
    'true'
  end
end
