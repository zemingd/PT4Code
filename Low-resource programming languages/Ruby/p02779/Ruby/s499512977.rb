N = gets.to_i
A = gets.split.map(&:to_i)

if A.uniq.size == N
  puts 'YES'
else
  puts 'NO'
end
