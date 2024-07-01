s = gets.to_s.chomp
weekday = ["SAT", "FRI", "THU", "WED", "TUE", "MON", "SUN"]

weekday.each_with_index do |day, index|
  if s == day
    p index + 1
    exit
  end
end