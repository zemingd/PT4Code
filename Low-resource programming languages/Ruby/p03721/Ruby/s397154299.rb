h = Hash.new(0)
n, k = gets.split.map(&:to_i)

n.times do
  a, b = gets.split.map(&:to_i)
  h[a] += b
end

def find_kth(h, k)
  cumsum = 0
  1.upto(10**5).each do |i|
    cumsum += h[i]
    return i if cumsum >= k
  end
end

puts find_kth(h, k)