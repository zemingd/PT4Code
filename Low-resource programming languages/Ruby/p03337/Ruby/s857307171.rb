arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

a = arr[0] + arr[1]
b = arr[0] - arr[1]
c = arr[0] * arr[1]

if
  a >= b and a >= c
  puts a
elsif
  b >= a and b >= c
else
  puts c
end
  