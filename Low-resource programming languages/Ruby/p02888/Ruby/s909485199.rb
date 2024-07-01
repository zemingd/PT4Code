N = gets.chomp.to_i
ls = gets.chomp.split(' ').map{|n| n.to_i}
a, total = 0, 0
while a < N - 2 do
  b = a + 1
  while b < N - 1 do
    c = b + 1
    while c < N do
      if (ls[b] - ls[c]).abs < ls[a] && ls[a] < ls[b] + ls[c]
        total += 1
      end
      c += 1
    end
    b += 1
  end
  a += 1
end
puts total