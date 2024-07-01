A, B = gets.split.map(&:to_i)

K = (A + B) / 2

if A == B
  puts 0
elsif (A + B) % 2 != 0
  puts 'IMPOSSIBLE'
else
  puts K
end
