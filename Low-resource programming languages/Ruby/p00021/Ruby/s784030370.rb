n = gets.to_i
for i in 1..n
  a,b,c,d,e,f,g,h = gets.split.map(&:to_f)
  puts (d-b)/(c-a) == (h-f)/(g-e) ? "YES" : "NO"
end