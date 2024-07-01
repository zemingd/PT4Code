_n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i).select(&:even?)
c = 0
loop do
  break if a.empty?
  t = a.pop * 3**c
  c += t.to_s(2).split('1')[-1].length
end

puts c