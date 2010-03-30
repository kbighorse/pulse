class Pulse < ActiveRecord::Base
  validates_presence_of :title, :synopsis, :description
  validates_length_of :title, :minimum => 5
  has_one :pulse_web_metadata
  has_many :tags
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
