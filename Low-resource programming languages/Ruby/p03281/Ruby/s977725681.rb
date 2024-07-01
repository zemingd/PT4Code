n = gets.to_i
target_number = 8
ans = 0

def divide_number(n)
  counter = 0
  1.upto(n) do |i|
    counter += 1 if n % i == 0
  end
  counter
end

1.upto(n) do |i|
  next if i % 2 == 0
  ans += 1 if divide_number(i) == target_number
end

puts ans