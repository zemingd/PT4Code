N = $stdin.gets.to_i
A = $stdin.gets.split.map {|i| i.to_i }
r = 1
0.upto(N - 1) do |i|
  if A[i] == 0
    puts "0"
    exit
  end
end
0.upto(N - 1) do |i|
  if (r *= A[i]) > 10 ** 18
    puts "-1"
    exit
  end
end
puts r
