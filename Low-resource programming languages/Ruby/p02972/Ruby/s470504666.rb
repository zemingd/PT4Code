n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
result = Array.new(n, 0)
possible = true
possibles = []
(n - 1).downto(0) do |i|
  if i + 1 > n / 2
    result[i] = arr[i]
  else
    loop_max = n / (i + 1)
    bit = 0
    2.upto(loop_max) do |j|
      bit = (bit + result[(i + 1) * j - 1]) % 2
    end
    result[i] = (arr[i] + bit) % 2
  end
  possibles.unshift(i + 1) if result[i] == 1
end
if possible
  if possibles.count > 0
    puts possibles.count
    puts possibles.join(' ')
  else
    puts 0
  end
else
  puts '-1'
end