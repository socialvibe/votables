class Votable < ActiveRecord::Base
  has_many :rounds, :dependent => :destroy
  has_many :options, :dependent => :destroy

  accepts_nested_attributes_for :rounds, :allow_destroy => true
  accepts_nested_attributes_for :options, :allow_destroy => true
end
