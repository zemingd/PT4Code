module Enumerable
  def cum_sum
    inject([0]) { |a, n| a << (a.last + n) }
  end
end

n = gets.to_i
s = gets.chomp

ws = s.each_char.map { |c| c.count 'W' }.cum_sum
es = s.each_char.map { |c| c.count 'E' }.cum_sum

p Array.new(n) { |i| ws[i] + es.last - es[i + 1] }.min
