N = gets.to_i
X = gets.split.map(&:to_i)

x = X.sort

X.each do |d|
  i = x.index(d)
  na = x.clone
  na.delete_at(i)
  puts na[N / 2 - 1]
end