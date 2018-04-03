class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  before_create :start_later
end


def start_later
  if Date.now >= start_date
    false
  end
end