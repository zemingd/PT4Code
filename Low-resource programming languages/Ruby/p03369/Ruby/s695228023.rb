S = gets.chomp.to_s

ans = 700

S.chars do |i|
  if i == "o"
    ans += 100
  else i == "x"
    ans == ans
  end
end

puts ans