A,B,C,K = gets.split.map(&:to_i)

rest = K
sum = 0
if (rest <= A)
  puts K
  exit
end

rest -= A
sum += A

if (rest <= B)
  puts sum
  exit
end

rest -= B
puts (sum - rest)
