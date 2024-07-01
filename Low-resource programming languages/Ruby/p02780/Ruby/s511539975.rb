item = gets.chomp.split(/\s+/).map { |e| e.to_i }
n = item[0]
k = item[1]
ps = gets.chomp.split(/\s+/).map { |e| e.to_i }

# 隣接
max = 0
max_index = 0

curr = ps[0,k].inject(:+)

0.upto(n-k) { |i|
  if curr > max
    max = curr
    max_index = i
  end
  curr += -ps[i] + ps[i+k] if i != n-k
}

saikoros = ps[max_index, k]

puts saikoros.map { |saikoro|
  saikoro * (saikoro + 1) / 2.0 / saikoro
}.inject(:+)
