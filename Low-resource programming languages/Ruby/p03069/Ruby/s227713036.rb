n = gets.to_i
s = gets.chomp

b = s.index("#")
w = s.rindex(".")

ans = if b.nil? || w.nil? || b > w
  0
else
  ss = s[b..w]
  bb = ss.count("#")
  ww = ss.count(".")
  [bb, ww].min
end

puts ans