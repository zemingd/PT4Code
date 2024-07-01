N = gets.to_i
a = gets.split(" ").map { |e| e.to_i }

count = 0
for i in 0..N-1 do
  count += a[i] -1
end

puts  count
