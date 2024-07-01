s = gets.chomp.chars
ans = 0
s.each do |ss|
  if ss == "+"
    ans += 1
  else
    ans -= 1
  end
end

puts ans