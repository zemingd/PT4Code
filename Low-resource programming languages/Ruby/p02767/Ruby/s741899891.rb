=begin
N
X1 ... Xn
=end

n = gets.chomp.to_i
xs = gets.chomp.split(" ").map(&:to_i)

xs.sort!

min = xs[0]
max = xs[-1]

score = (100 * 100) * 100 * 10

(min..max).each do |i|
  s = 0

  xs.each do |x|
    s = s + (x - i) * (x - i)
  end

  if score > s
    score = s
  end
end

puts score
