a,b = gets.chomp.split(" ").map(&:to_i)

num = (a.to_s + b.to_s).to_i

sqrt = Math.sqrt(num).to_i

if sqrt * sqrt == num then
  puts 'Yes'
else
  puts 'No'
end
