N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)


(N - K).times{ |_i|
  i = K + _i
  if A[_i] < A[i]
    puts "Yes"
  else
    puts "No"
  end
}
