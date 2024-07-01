n = gets.chomp.to_i
h = gets.chomp.split(' ').map(&:to_i)

ans = 0
max = 0
pre = -1
h.each do |x|
  if pre > -1
    if pre >= x
      ans += 1
    else
      max = ans > max ? ans : max
      ans = 0
    end
  end
  pre = x
end
max = ans > max ? ans : max
puts "#{max}"
