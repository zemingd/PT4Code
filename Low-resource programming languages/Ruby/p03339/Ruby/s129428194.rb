n = gets.to_i
s = gets.chomp

r = s[1..-1].count("E")
l = 0

minv = r + l

1.upto(n-1) do |i|
  r -= 1 if s[i]=='E'
  l += 1 if s[i-1]=='W'
  minv = [minv, r+l].min
end

p minv
