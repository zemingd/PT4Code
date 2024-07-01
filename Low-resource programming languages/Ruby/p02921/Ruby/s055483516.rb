s = gets.chomp.split('')
t = gets.chomp.split('')
i = 0
ans = 0
s.each do |se|
  if se == t[i]
    ans += 1
  end
  i += 1
end
puts "#{ans}"
