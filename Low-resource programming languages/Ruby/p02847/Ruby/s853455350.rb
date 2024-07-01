s = gets.strip
week = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"] 

week.each_with_index do |day, i|
  if day == s
    puts (7 - i)
  end
end