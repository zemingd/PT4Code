n, k = gets.chomp.split(' ').map(&:to_i)
p = gets.chomp.split(' ').map(&:to_i)

class Array
  def sum
    self.inject(:+)
  end
end

class Fixnum
  def expected_value
    (1..self).to_a.sum.to_f / self.to_f
  end
end

max = -1
perm = []

for i in 0..(n-k) do
  if (p[i..(i+k-1)].sum > max)
    max = p[i..(i+k-1)].sum
    perm = p[i..(i+k-1)]
  end
end

result = perm.inject(0) {|memo,item| memo + item.expected_value }

puts result
