N = gets.to_i
x = gets.split(" ").map { |e| e.to_i }

for i in 0..N-1 do
  copy = x.dup
  copy.delete_at(i)
  copy.sort!
  puts copy[N/2-1]
end