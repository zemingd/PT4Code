strs = gets.chomp.split('')
ans = 0
strs.each do |str|
  if str == '+'
    ans += 1
  else
    ans -= 1
  end
end
puts ans