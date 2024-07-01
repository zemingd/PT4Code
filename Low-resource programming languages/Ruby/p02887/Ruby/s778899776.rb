gets
s = gets.chars
 
res = 0
before = nil
s.each() do |a|
  res += 1 if a != before
  before = a
end
 
p res