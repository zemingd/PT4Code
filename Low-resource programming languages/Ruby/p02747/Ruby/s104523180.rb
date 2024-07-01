s = gets.chomp
ans = 'No'
(0..s.size-2).each do |i|
  if s[i..i+1] == 'hi'
    ans = 'Yes'
  end
end
puts ans
