N, K, Q = gets.strip.split.map(&:to_i)
A = []
P = []
N.times do |i|
  P[i] = K
end

Q.times do|i|
  A[i] = gets.strip.to_i
end

A.each do |i|
  (P.length).times do |l|
    if l+1 == i
      next
    end
    P[l] = P[l] - 1
  end
end

(P.length).times do |i|
  if P[i] > 0
    puts "Yes"
  else
    puts "No"
  end
end