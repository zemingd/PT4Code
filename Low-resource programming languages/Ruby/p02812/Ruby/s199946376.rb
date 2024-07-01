n = gets.chomp.to_i
s = gets.chomp.to_s
counter = 0

while s.include?('ABC')
  s.slice!('ABC')
  counter +=1
end

print counter