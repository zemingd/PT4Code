x = gets.to_i

ans = 0
(1..1000).each do |b|
  if b > x
    break
  end
  (2..1000).each do |p|
    if b**p > x
      break
    end
    ans = [ans, b**p].max
  end
end

puts ans