N = gets.to_i
P = gets.chomp.split.map(&:to_i)

s = 0
m = P[0]
P.each do |p|
  if p <= m
    s += 1
    m = p
  end
end

puts s