n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
a << 10 ** 6
b = [0, 0, 0]
before = nil
max = 0
a.sort.each_with_index { |v, i|
  if v != before
    sum = b.inject(:+) || 0
    max = sum if sum > max
    if before != nil
      (v - before - 1).times {
        b.shift
        b << 0
      }
    end
    b.shift
    b << 1
    before = v
  else
    b[-1] += 1
  end
}

puts max
