n = gets.chomp
s = gets.chomp
counter = 0

while s.include?('ABC')
  s.slice!('ABC')
  counter += 1
end

print counter
