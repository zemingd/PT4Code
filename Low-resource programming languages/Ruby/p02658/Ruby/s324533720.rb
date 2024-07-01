n = gets
ary = gets.split.map(&:to_i)
ans = 1
if ary.include?(0)
  puts 0
  return
end
ary.each do |a|
  ans *= a
  if ans > 10**18
    puts -1
    return
  end
end
puts ans
