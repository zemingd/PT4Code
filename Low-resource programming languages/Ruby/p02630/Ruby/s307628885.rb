N = gets.to_i
A = gets.split.map(&:to_i)

offset = 1 << 18
D = Array.new(offset, 0)
BT = Array.new(offset * 2, 0)
class << BT
  def update(x)
    offset = size / 2
    self[offset + x] = D[x] * x
    k = (offset + x) / 2
    while k > 0
      self[k] = self[2 * k] + self[2 * k + 1]
      k /= 2
    end
  end
end
A.each do |v| 
  D[v] += 1
  BT.update(v)
end

Q = gets.to_i
Q.times do
  b,c = gets.split.map(&:to_i)
  D[c] += D[b]
  D[b] = 0
  BT.update(b)
  BT.update(c)
  puts BT[1]
end

