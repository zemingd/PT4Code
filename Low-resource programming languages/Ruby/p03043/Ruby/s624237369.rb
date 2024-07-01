n,k = gets.chomp.split(" ").map(&:to_i)

b = 1
b_arr = [b]
while b < k do
  b *= 2
  b_arr << b
end
max = b_arr[-1]

a = 0
(1..n).each do |i|
  if i <= k - 1  then
    b_arr.each do |b|
      if i <= b then
        a += b
        break
      end
    end
  else
    a += max
  end
end

puts a / (n * max).to_f
