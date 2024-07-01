N, K = gets.split(' ').map(&:to_i)
H = gets.split(' ').map(&:to_i).sort

if N <= K
  puts 0
elsif K.zero?
  puts H.inject(:+)
else
  puts (H - H[(-1) * K..-1]).inject(:+)
end