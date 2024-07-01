N,K = gets.split.map &:to_i
a = gets.split.map &:to_i

for i in 0...N-K
  puts a[K+i] > a[i] ? 'Yes' : 'No'
end
