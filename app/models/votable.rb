class Votable < ActiveRecord::Base
  has_many :rounds, :dependent => :destroy
  has_many :options, :dependent => :destroy
  belongs_to :user

  accepts_nested_attributes_for :rounds, :allow_destroy => true
  accepts_nested_attributes_for :options, :allow_destroy => true

  def num_voters
    5
  end

  def is_owner?(user)
    self.user == user
  end
end
