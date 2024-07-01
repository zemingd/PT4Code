a,b,c = gets.split.map(&:to_i)
lp = a%b
flag = true
1000000.times do |i|
  ngo = a * (i + 2) % b
  if ngo == c
    flag = true
    break
  end
  if lp == ngo

    flag = false
    break
  end
end

puts flag ? "YES" : "NO"