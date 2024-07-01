n = gets.to_i
a = gets.split.map(&:to_i).sort
ans = a.shift
MAX = 10 ** 18
a.each do |ai|
  ans *= ai
  if ans > MAX
    puts -1
    exit
  end
end
puts ans
