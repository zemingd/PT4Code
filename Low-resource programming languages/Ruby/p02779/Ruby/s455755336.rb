N = gets.to_i
A = gets.split.map(&:to_i)

if N == A.uniq.size
  puts "YES"
else
  puts "NO"
end
