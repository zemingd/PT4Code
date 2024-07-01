S = gets.chomp

result = case S
  when "SUN"
    7
  when "MON"
    6
  when "TUE"
    5
  when "WED"
    4
  when "THU"
    3
  when "FRI"
    2
  when "SAT"
    1
end

puts result