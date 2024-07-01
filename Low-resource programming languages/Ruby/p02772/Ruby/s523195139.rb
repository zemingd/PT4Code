n = gets.to_i
nums = gets.split(" ").map(&:to_i)


puts nums.all? { |i|(i%2==1 || i%3==0 || i%5==0) } ? :APPROVED : :DENIED