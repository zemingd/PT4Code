N, K = gets.chomp.split(" ").map(&:to_i)

i = 0
while N >= (K ** i) do
  i += 1
end

puts i