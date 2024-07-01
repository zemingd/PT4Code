A, B, K = gets.split(" ").map(&:to_i)
result = []
1.upto [A, B].min do |i|
  if(A % i == 0 && B % i == 0)
    result << i
  end
end

puts result[-K]
