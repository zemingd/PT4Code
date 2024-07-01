def min(a,b); a < b ? a : b; end

L, R = gets.split.map(&:to_i).map{|v| v.divmod(2019) }
if L[0] < R[0]
  puts 0
else
  puts (L[1] .. R[1]).to_a.combination(2).inject(2019){|s,(i,j)| break 0 if s.zero? ; min(s, (i * j) % 2019) }
end
