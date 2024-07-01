s = gets.chomp
ans = 'No'
5.times do |i|
  if s == 'hi' * (i+1)
    ans = 'Yes'
  end
end
puts ans
