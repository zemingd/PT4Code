n = gets.to_i
x = gets.to_s
x = x.split(" ").map(&:to_i)
sum = 0
ans = []
count = x.min
while count <= x.max
  x.each do |x|
    sum += (x - count) ** 2
  end
  ans << sum
  sum = 0
  count += 1
end

puts "#{ans.min}"
