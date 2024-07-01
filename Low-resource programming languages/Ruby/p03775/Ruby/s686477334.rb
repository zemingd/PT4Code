n = gets.to_i

ans = Float::INFINITY
1.upto(Math.sqrt(n).to_i) do |a|
  if n % a == 0
    b = n / a
    ans = [ans, [a.to_s.size, b.to_s.size].max].min
  end
end

puts ans
