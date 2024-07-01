n = gets.to_i
s = $<.map(&:to_i)
t = []
n.times do |i|
  t += s.combination(i + 1).to_a
end
t.map! { |x| x.inject(:+) }.delete_if { |x| x % 10 == 0 }
p t.empty? ? 0 : t.max