module ApplicationHelper
  def format_date_time(time)
    time.strftime('%m/%d/%Y %H:%m %p')
  end

  def format_date(time)
    time.strftime('%m/%d/%Y')
  end
end
