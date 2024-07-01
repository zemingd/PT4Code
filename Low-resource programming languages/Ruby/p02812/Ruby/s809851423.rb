n = gets.to_i
s = gets.strip
 
count = 0
while i = s.index('ABC') do
  s = s[(i+3)..-1]
  count += 1
end

puts count