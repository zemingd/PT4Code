def tenki(s, t)
  ans = 0
  0.upto(s.size - 1) do |i|
    ans += 1 if s[i] == t[i]
  end
  ans
end

s = gets.chomp
t = gets.chomp

puts tenki(s, t)
