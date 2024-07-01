N,K = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
 
b = Array.new(N+1, 0)
a.map { |i| b[i-1] += 1 }
b.delete(0)

c = b.size

if c <= K
  puts 0
else
  puts b.sort.shift(c-K).inject(:+)
end
