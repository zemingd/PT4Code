s = gets.chomp.split("").map(&:to_i)
flag = true
previous = s.shift
s.each do |num|
  if num == previous
    flag = false
    break
  end
  previous = num
end
puts flag ? "Good" : "Bad"
