n = gets.chomp.to_i
x = gets.chomp
ans = 0
(n - 1).times do |i|
  l = x[0..i].split("").uniq
  r = x[(i+1)..-1].split("").uniq
  s = 0
  l.each do |e|
    s += 1if r.include?(e)
  end
  ans = [ans, s].max
end
puts ans