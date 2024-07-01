n, m = gets.split.map(&:to_i)
abs = []
m.times do
  abs << gets.split.map(&:to_i)
end

abs.sort!{|a,b| a[1] <=> b[1]}

ans = 1
current = abs[0][1]
abs.each do |ab|
  if ab[0] >= current
    ans += 1
    current = ab[1]
  end
end

puts ans
