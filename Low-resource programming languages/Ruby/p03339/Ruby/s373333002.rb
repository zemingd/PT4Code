module Enumerable
  def cum_sum
    inject([0]) { |a, n| a << (a.last + n) }
  end
end

n = gets.to_i
s = gets.chomp.chars

ws = s.map { |c| c.count 'W' }.cum_sum
es = s.map { |c| c.count 'E' }.cum_sum

p Array.new(n) { |i| ws[i] + es.last - es[i + 1] }.min
