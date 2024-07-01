n, k = gets.split.map(&:to_i)
sum = 0.0
1.upto(n) do |i|
  val = i
  count = 0.0
  while(val < k)
    val *= 2
    count += 1.0
  end
  mom = 2.0**count 
  sum += 1.0/mom
end

puts sprintf( "%.9f", sum / n ) 