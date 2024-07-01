n,k = gets.split(" ").map(&:to_i)
as = gets.split(" ").map(&:to_i)

if n == 1
  puts 0
  exit
end

as.shift(k)
count = 1
as.each_slice(k-1) do
  count += 1
end

puts count