s = gets.chomp

count_zero = 0
count_one = 0
s.each_char do |c|
  if c == '0'
    count_zero += 1
  else
    count_one += 1
  end
end

puts [count_zero, count_one].min * 2
