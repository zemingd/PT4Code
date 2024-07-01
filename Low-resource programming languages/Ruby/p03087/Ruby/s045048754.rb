n, q = gets.split.map(&:to_i)
s = gets.chomp
a = [0]
(1...n).each do |i|
  a[i] = a[i-1] + (s[i-1, 2] == 'AC' ? 1 : 0)
end
q.times do
  l, r = gets.split.map(&:to_i)
  puts a[r-1] - a[l-1]
end