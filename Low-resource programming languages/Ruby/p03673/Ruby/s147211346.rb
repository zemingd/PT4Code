N = gets.to_i
is = (0...N/2).map{ |i| i*2+1 }.reverse + (0...(N+1)/2).map{ |i| 2*i }
if N%2 == 1
  is.reverse!
end
A = gets.split.map(&:to_i)
puts is.map{ |i| A[i] }.join(" ")
