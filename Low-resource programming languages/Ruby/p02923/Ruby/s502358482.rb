n = gets.chomp
h = gets.chomp.split(' ').map(&:to_i)

ans = 0
tmp = 0

1.upto(h.size - 1) do |i|
  if h[i - 1] < h[i]
    ans = tmp if tmp > ans

    tmp = 0
  else
    tmp += 1
  end
end
ans = tmp if tmp > ans

puts ans