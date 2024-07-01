abc= gets.split(" ").map { |e| e.to_i }
k = gets.to_i

max = abc.max
n_max = abc.index(max)
count = 0

for i in 0..2 do
  if i == n_max
    count += max * 2**k
  else
    count += abc[i]
  end
end

puts count
