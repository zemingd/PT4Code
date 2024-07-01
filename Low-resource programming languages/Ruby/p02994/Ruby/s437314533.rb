n, l = gets.chomp.split(' ').map(&:to_i)
reserved = 0
1.upto(n) do |i|
  reserved += i + l - 1
end

apple_pie = 0
1.upto(n) do |i|
  now = 0
  1.upto(n) do |j|
    next if i == j
    now += j + l - 1
  end
  if (reserved - now).abs < (reserved - apple_pie).abs
    apple_pie = now
  end
end
puts apple_pie