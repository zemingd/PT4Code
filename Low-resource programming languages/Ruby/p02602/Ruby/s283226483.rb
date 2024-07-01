N, K = gets.split(' ').map(&:to_i)
scores = [1] + gets.split(' ').map(&:to_i)

(K+1..N).each do |i|
  word = scores[i] > scores[i-K] ? 'Yes' : 'No'
  puts word
end
