n = gets.to_i
arr = []

1.upto(n) do |i|
  1.upto(n) do |j|
    arr << i.gcd(j)
  end
end

sum = 0

arr.each do |ab|
  1.upto(n) do |c|
    sum += ab.gcd(c)
  end
end

puts sum