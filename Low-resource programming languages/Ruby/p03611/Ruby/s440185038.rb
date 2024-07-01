n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
a << 10 ** 5
b = []
before = nil
max = 0
a.sort.each_with_index { |v, i|
  if v != before
    sum = b.inject(:+) || 0
    max = sum if sum > max
    b.shift if b.length >= 3
    b << 1
    before = v
  else
    b[-1] += 1
  end
}

puts max
