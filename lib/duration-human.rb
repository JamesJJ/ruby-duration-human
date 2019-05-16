class Numeric
  def duration(concise: false)
    seconds  = self.to_int
    minutes  = seconds / 60
    hours = minutes / 60
    days  = hours / 24

    if hours >= 48
      concise ? "#{days}d #{hours % 24}h" : "#{days} days and #{hours % 24} hours"
    elsif minutes >= 120
      concise ? "#{hours}h #{minutes % 60}m" : "#{hours} hours and #{minutes % 60} minutes"
    elsif seconds >= 120
      concise ? "#{minutes}m #{seconds % 60}s" : "#{minutes} minutes and #{seconds % 60} seconds"
    elsif seconds >= 0
      concise ? "#{seconds}s" : "#{seconds} seconds"
    end
  end
end
