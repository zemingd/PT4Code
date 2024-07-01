N, K = gets.split.map(&:to_i)
A = Hash.new {|h, k| h[k] = 0 }

gets.split.map(&:to_i).each do |i|
  A[i] += 1
end

puts A.size <= K ? 0 : A.values.sort.first(A.size - K).inject(:+)