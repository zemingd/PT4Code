n, k = gets.chomp.split(' ').map(&:to_i)

d = k
i = 0

loop do
  i = i + 1
  if n < d
    puts i
    exit
  end
  d = d * k
end
