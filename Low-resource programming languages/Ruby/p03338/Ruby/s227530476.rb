N = gets.strip.to_i
a = gets.strip.split('')

def chmax(a, b) a > b ? a : b end


def f(x, y)
  x.uniq.select { |n| y.include?(n) }.size
end

res = 0
(N - 1).times do |i|
  res = chmax(f(a[0..i], a[(i + 1)..-1]), res)
end

puts res
