N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

(K..N-1).map do |i|
  if A[i] >  A[i - K]
    print "Yes\n"
  else
    print "No\n"
  end
end