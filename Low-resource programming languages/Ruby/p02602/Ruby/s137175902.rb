N, K = gets.split(' ').map(&:to_i)
scores = [1] + gets.split(' ').map(&:to_i)

ans = Array.new(N+1, 1)

(1..K).each do |i|
  ans[K] *= scores[i]
end


(1..N-K).each do |i|
  ans[K+i] = ans[K+i-1]*scores[K+i]/scores[i]
end

(K+1..N).each do |i|
  word = ans[i] > ans[i-1] ? 'Yes' : 'No'
  puts word
end
