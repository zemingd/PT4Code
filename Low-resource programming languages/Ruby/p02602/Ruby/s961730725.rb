N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

hyotens = (K..N).map do |i|
  hyoten = 1
  K.times do |j|
    hyoten *= A[i - j - 1]
  end
  hyoten
end

(N-K).times do |i|
  if hyotens[i] < hyotens[i+1]
    print "Yes\n"
  else
    print "No\n"
  end
end