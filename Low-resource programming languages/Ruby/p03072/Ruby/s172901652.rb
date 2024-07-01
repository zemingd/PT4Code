N = gets.to_i
H = gets.split.map(&:to_i)
S = Array.new(N, H[0])
(1 ... N).each do |i|
  S[i] = (H[i] >= S[i - 1] ? H[i] : S[i - 1])
end
puts N.times.count{|i| H[i] == S[i] }

