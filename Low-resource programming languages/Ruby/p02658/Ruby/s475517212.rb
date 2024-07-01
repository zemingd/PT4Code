_ = gets
list=gets.split.map(&:to_i).sort
ans = 1
list.each do |a|
  ans *= a
  if ans > 1000000000000000000
    ans = -1
    break
  end
end
puts ans
