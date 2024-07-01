A = [1, 3, 5, 7, 8, 10, 12]
B = [4, 6, 9, 11]
C = [2]

x,y = gets.chomp.split(' ').map(&:to_i)

if A.include?(x) then
  x = 'A'
elsif B.include?(x) then
  x = 'B'
else
  x = 'C'
end

if A.include?(y) then
  y = 'A'
elsif B.include?(y) then
  y = 'B'
else
  y = 'C'
end

if x == y then
  puts 'Yes'
else
  puts 'No'
end