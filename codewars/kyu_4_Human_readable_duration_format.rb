def format_duration(seconds)
  years = seconds/31536000;
  seconds = seconds%31536000;

  days = seconds/86400;
  seconds = seconds%86400;

  hours = seconds/3600
  seconds = seconds%3600

  minutes = seconds/60
  seconds = seconds%60

  res = []
  (res << (years == 1 ? "1 year" : "#{years} years")) if years > 0
  (res << (days == 1 ? "1 day" : "#{days} days")) if days > 0
  (res << (hours == 1 ? "1 hour" : "#{hours} hours")) if hours > 0
  (res << (minutes == 1 ? "1 minute" : "#{minutes} minutes")) if minutes > 0
  (res << (seconds == 1 ? "1 second" : "#{seconds} seconds")) if seconds > 0
  
    
  return "now" if res.size == 0
  return res[0,res.size-1].join(", ") + " and " + res[-1] if res.size > 2
  return res.join(" and ") if res.size == 2
  return res[0]
end