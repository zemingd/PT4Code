n = gets.to_i
a = gets.split.map(&:to_i).sort
ans = 1
li = 10**18
a.each do |i|
  ans *= i
  if ans > li
    puts -1
    exit
  end
end
puts ans
