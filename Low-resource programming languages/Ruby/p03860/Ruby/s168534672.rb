arr = gets.chomp.split

ans = ''
arr.each do |s|
  ans += s[0]
end

puts ans
