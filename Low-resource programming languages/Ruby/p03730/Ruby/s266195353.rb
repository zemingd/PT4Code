a, b, c = gets.split.map(&:to_i)
flag = false
(1..b).each do |x|
  if a*x % b == c
    flag = true
    break
  end
end
puts flag ? 'YES' : 'NO'
