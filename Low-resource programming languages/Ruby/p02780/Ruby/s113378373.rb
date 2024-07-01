item = gets.chomp.split(/\s+/).map { |e| e.to_i }
n = item[0]
k = item[1]
ps = gets.chomp.split(/\s+/).map { |e| e.to_i }

# 隣接
max = 0
max_index = 0
0.upto(n-k) { |i|
  curr = ps[i, k].inject(:+)
  if curr > max
    max = curr
    max_index = i
  end
}

saikoros = ps[max_index, k]

puts saikoros.map { |saikoro|
  (1..saikoro).inject(:+).to_f / saikoro
}.inject(:+)
