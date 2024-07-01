n,x = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i).sort
ans = 0
arr.each do |num|
  x -= num
  if x < 0
    break
  end
  ans += 1
end
if x > 0
  ans -= 1
end
puts ans
