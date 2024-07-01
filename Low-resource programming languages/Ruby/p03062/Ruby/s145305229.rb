def flipping_signs(n, a)
  sum = 0
  odd = false
  lowest = a.first.abs
  a.each do |n|
    sum += n.abs
    lowest = n.abs if lowest > n.abs
    odd = !odd if n < 0
  end

  sum - (odd ? lowest * 2 : 0)
end

n = gets.to_i
a = gets.split.map(&:to_i)
puts flipping_signs(n, a)