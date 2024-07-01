array = ["SUN","MON","TUE","WED","THU","FRI","SAT"]

day = gets.chomp

array.each_index do |idx|
  if array[idx] == day
    puts 7 - idx
  end
end