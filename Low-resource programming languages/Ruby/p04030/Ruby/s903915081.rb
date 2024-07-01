s = gets.chomp
ans = []
s.chars do |char|
  if char != "B"
    ans << char
  else
    ans.pop
  end
end
puts ans.join
