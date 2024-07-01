N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
p = Hash.new 0
A.each do |i|
  p[i] += 1
end
ans = 0
r = [p.size - K, 0].max
if r > 0
  p.sort_by{|_, v|v}.each.with_index do |(_, v), i|
    ans += v
    break if i + 1 >= r
  end
end
puts ans