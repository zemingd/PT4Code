line = gets
puts num_of_days(line)
days = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
days.each_with_index do |day, index|
  if string == day
    puts (7 - index)
    break
  end
end
