_n, q = gets.split.map(&:to_i)
s = gets.chomp.split('')
ac_list = []
(0..s.size-2).each do |i|
  ac_list << i if s[i] == 'A' && s[i+1] == 'C'
end
q.times do
  l, r = gets.split.map { |x| x.to_i-1 }
  puts ac_list.map { |x| x.between?(l, r-1) ? x : nil }.compact.size
end
