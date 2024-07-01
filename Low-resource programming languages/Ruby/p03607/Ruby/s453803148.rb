n = gets.chomp.to_i
h = Hash.new(0)
n.times do
  a = gets.chomp.to_i
  h[a] += 1
end
ans = 0
h.each do |k, v|
  if v.odd?
    ans += 1
  end
end
puts ans