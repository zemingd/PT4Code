N = $stdin.gets.chomp.to_i
A = $stdin.gets.chomp.split(" ").map(&:to_i).map.with_index{ |a,i| a - (i+1) }.sort
puts (0...(N/2)).map{ |i| A[N-i-1]-A[i] }.inject(:+) || 0
