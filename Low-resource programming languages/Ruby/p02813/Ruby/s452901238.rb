N = gets.strip.to_i
P = gets.strip.split(' ').map(&:to_i)
Q = gets.strip.split(' ').map(&:to_i)
nums = []
permuted = []
N.times { |v| nums.push(v+1) }
nums.permutation(N).each do |v|
  permuted.push v
end
puts (permuted.find_index(P) - permuted.find_index(Q)).abs