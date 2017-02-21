class DateController < ApplicationController
  def index
    time = Time.parse(datetime).in_time_zone("Pacific Time (US & Canada)")
    time.strftime("%-d/%-m/%y: %H:%M %Z")

  end
end
