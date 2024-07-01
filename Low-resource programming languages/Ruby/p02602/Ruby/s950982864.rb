N, K = gets.split.map(&:strip).map(&:to_i)
A = gets.split.map(&:strip).map(&:to_i)

(1..(N-K)).each do |i|
  if A[K+i-1] > A[i-1]
    puts 'Yes'
  else
    puts 'No'
  end
end
