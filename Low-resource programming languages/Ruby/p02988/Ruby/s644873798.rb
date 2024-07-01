N = gets.chomp.to_i
a = gets.chomp.split().map(&:to_i)
ct = 0

1.upto(N-2) do |n|
  b = a[n-1..n+1]
  ct += 1 if b.max != a[n] && b.min != a[n]
end

puts ct