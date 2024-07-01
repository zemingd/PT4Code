gets
s = gets.chomp.chars
 
res = 0
before = nil
s.each() do |a|
  res += 1 if a != before
  before = a
end
 
puts res