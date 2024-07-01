input = gets.strip.split.map!(&:to_i)
n = input[0]
l = input[1]
i = 1 - l

if(i < 1)
  i = 1
elsif(i > n)
  i = n
end

puts (l - 1) * (n - 1) + n * (n + 1) / 2 - i
