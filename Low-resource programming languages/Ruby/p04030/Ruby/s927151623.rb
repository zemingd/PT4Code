s = gets.chomp
ans = ""
s.length.times do |i|
  if s[i] != "B"
    ans += s[i]
  elsif ans != ""
    ans.slice!(-1)
  end
end
puts ans
