module ApplicationHelper
  def format_date_time(time)
    time.strftime('%m/%d/%y %H:%m %p')
  end
end
