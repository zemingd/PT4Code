x = gets.to_i

ans = 0
if x == 1
  ans = 1
else
  (1..Math.sqrt(x).floor).each do |b|
    (2..x).each do |p|
      if b ** p <= x
        ans = [ans, b ** p].max
      end
    end
  end
end

puts ans
