n, q = gets.split.map(&:to_i)
s = gets.chomp
lrs = []
(0..n-2).each{|i| lrs << (s[i,2] == 'AC' ? 1 : 0) }
q.times do
  l, r = gets.split.map(&:to_i)
  puts lrs[l-1..r-2].inject(&:+)
end
