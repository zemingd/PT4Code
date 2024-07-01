N = gets.to_i
P = gets.split(' ').map(&:to_i)
cnt = 0
(1...N-1).each{ |i|
  if P[i-1] < P[i]
    cnt += 1 if P[i] <= P[i+1]
  elsif P[i-1] >= P[i]
    cnt += 1 if P[i] > P[i+1] 
  end
}
puts cnt