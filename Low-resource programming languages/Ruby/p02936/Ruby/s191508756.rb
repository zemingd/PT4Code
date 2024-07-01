N,Q = gets.split.map(&:to_i)
T = [[nil,0]]
(N-1).times do
  a,b = gets.split.map(&:to_i)
  T[b-1] = [a-1, 0]
end
Q.times do
  i,x = gets.split.map(&:to_i)
  T[i-1][1] += x
end
1.step(N-1) {|i| T[i][1] += T[T[i][0]][1] }
puts T.map {|_,n| n }.join(' ')
