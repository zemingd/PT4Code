N,A,B = gets.split(" ").map(&:to_i)

sums = 0

def positons_sum(num)
  sum = 0
  until num == 0
    sum += num%10
    num /= 10
  end
  return sum
end

(0..N).each do |n|
  sum = positons_sum(n)
  sums += n if A <= sum && sum <= B
end

puts sums
