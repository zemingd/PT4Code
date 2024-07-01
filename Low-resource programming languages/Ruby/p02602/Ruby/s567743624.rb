N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

hyoten = 1
hyotens = (K..N).map do |i|
  if i == K
    K.times do |j|
      hyoten *= A[K - j - 1]
    end
  else
    hyoten = hyoten * A[i - 1] / A[i - K - 1]
  end
  [i, hyoten]
end.to_h

(K..N-1).each do |i|
  if hyotens[i] < hyotens[i+1]
    print "Yes\n"
  else
    print "No\n"
  end
end