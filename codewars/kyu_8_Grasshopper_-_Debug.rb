def weather_info(temp)
  c = (temp-32)*(5/9.0)
  if c < 0
    return "#{c} is freezing temperature"
  else
    return "#{c} is above freezing temperature"
  end
end