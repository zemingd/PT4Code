arr = gets.split('')

ans = 0
arr.each do |e|
  ans += 1 if e == '+'
  ans -= 1 if e == '-'
end

puts ans
