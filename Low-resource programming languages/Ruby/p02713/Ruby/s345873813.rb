n, k = 3, gets.to_i
m = 10**9 + 7

a = Array.new(k, 1)

(n - 1).times do
  b = Array.new(k + 1, 0)
  a.each.with_index(1) do |cnt, j|
    next if cnt == 0
    1.upto(k) do |i|
      b[i.gcd(j)] += cnt
    end
  end
  a = b.drop(1)
end

puts a.each.with_index(1).inject(0) { |s, (cnt, i)| (s + cnt * i) % m }

load __FILE__ unless $stdin.eof?
