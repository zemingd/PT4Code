N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

(K...N).each do |i|
  if A[i] > A[i - K]
    puts 'Yes'
  else
    puts 'No'
  end
end
