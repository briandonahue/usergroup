class Event
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :start_date, :type => Time
  field :end_date, :type => Time

  def self.upcoming 
    where("start_date > ?", Time.now)
  end
end
