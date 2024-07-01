def min(a,b); a < b ? a : b; end
  
N = gets.to_i
S = Array.new(N + 1,0)
gets.split.map(&:to_i).each_with_index do |a,i|
  S[i + 1] = S[i] + a
end
puts (1 ... N).inject(1 << 40){|s, i| min(s, (S[N] - 2 * S[i]).abs) }