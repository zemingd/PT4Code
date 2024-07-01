n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
n.times do |i|
  b = a.select.with_index { |ai, index| index != i }
  c = b.group_by { |ci| ci }
  ans = 0
  c.each do |_k, v|
    n = v.count
    ans += n * (n - 1) / 2
  end
  puts ans
end