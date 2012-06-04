module WelcomeHelper
  def format_date(date)
    date.strftime("%d-%m-%Y %H:%M")
  end
end
