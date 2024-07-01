N,K = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

b = Array.new(N, 0)
a.map { |a| b[a-1] += 1 }
b.sort.reverse!.delete(0)

if b.size <= K
  puts 0
else
  puts b.drop(K).inject(:+)
end
