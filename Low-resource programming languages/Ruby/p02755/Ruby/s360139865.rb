a, b = gets.split(' ').map!(&:to_i)

ans = -1
10000.times do |i|
  if (i * 0.08).floor == a && (i * 0.1).floor == b
    ans = i
    break
  end
end

puts ans
