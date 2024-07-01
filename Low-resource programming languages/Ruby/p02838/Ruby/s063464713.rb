n = gets.chomp.to_i
a_list = gets.chomp.split.map(&:to_i)
mod = 10**9 + 7

result = 0
for i in 0..(n-2) do
  for j in (i+1)..(n-1) do
    result += a_list[i] ^ a_list[j]
    result = result % mod
  end
end

puts result