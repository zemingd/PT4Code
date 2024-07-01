n = $stdin.gets
m = n.split("").map(&:to_i)
n = n.to_i
sum = 0
m.length.times do |i|
  sum = sum + m[i-1]
end


if n % sum == 0
  puts "Yes"
else
  puts "No"
end
