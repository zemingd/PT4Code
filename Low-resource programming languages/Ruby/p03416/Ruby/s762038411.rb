a,b = gets.strip.split.map(&:to_i)
cnt = 0 
a.upto(b) do |i|
  s = i%10
  t = i/10000%10
  u = i/1000 % 10
  v = i/10%10
  cnt += 1 if s==t && u==v
end
puts cnt