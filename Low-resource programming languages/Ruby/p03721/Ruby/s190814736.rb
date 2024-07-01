N,K = gets.split.map(&:to_i)
a = []
b = []
for i in 0..N-1
    a[i],b[i] = gets.split.map(&:to_i)
end

puts a[(0..N).bsearch{|n| b.slice(0..n).inject(:+) >= K}]