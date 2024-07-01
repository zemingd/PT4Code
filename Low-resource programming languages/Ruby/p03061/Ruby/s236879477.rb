module Enumerable
  def scan(init = 0)
    inject([init]) { |a, n| a << yield(a.last, n) }
  end

  def scan_right(init = 0)
    reverse_each.inject([init]) { |a, n| a.unshift yield(a.first, n) }
  end
end

n = gets.to_i
ns = gets.split.map(&:to_i)

ls = ns.scan(&:gcd)
rs = ns.scan_right(&:gcd)

p Array.new(n) { |i| ls[i].gcd rs[i + 1] }.max
