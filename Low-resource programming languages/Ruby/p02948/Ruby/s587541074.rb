n, m = gets.split.map(&:to_i)
# as = Array.new(n)
# bs = Array.new(n)
abs = []
n.times do |i|
  abs << gets.split.map(&:to_i)
end

abs.sort_by! { |a, b| [-b, -a] }
# abs.sort_by! { |a, b| [-(a+b)] }

# puts abs.inspect

ans = 0

abs.each_with_index do |ab, i|
  a = ab[0]
  b = ab[1]

  if a + i <= m
    ans += b
  end
end

puts ans