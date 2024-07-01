n,m = gets.split(" ").map(&:to_i)
list = gets.split(" ").map(&:to_i)

sum = 0

for value in 0...list.length do
  sum = sum + list[value]
end

pre = sum / (4.0 * m)

ans = list.select { |num| num >= pre }

if ans.length >= m  then
  puts "Yes"
else
  puts "No"
end
