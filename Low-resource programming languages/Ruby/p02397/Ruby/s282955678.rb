arr = []
loop do
  tmp = gets.split(" ").map(&:to_i).sort!
  int1 = tmp[0]
  int2 = tmp[1]
  break if int1.zero? && int2.zero?
  arr << "#{int1} #{int2}"
end

puts arr