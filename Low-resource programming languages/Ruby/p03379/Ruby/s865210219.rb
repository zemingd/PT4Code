N = gets.to_i
x = gets.split(" ").map { |e| e.to_i }

copy = x.dup
copy.sort!
big = copy[N/2]
sma = copy[N/2-1]

for i in 0..N-1 do
  if x[i] < big
    puts big
  else
    puts sma
  end
end