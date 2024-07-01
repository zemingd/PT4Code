line = gets
days = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
days.each_with_index do |day, index|
  if line == day
    return (7 - index)
  end
end
