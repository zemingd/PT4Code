s = gets

ans = ""
s.each_char do |c|
  if c == ?B
    ans.chop!
  else
    ans += c
  end
end

print ans