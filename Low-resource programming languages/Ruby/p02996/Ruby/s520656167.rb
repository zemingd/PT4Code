n = gets.to_i
abs = n.times.map { gets.split.map(&:to_i) }.sort_by { |a, b| [b, a] }

ans = "Yes"
t = 0

abs.each do |a, b|
  t += a
  if t > b
    ans = "No"
    break
  end
end

puts ans
