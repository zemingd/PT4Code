N = gets.to_i
D = gets.split.map(&:to_i)
L = Array.new(D.max + 1,0)
D.each{|d| L[d] += 1}
if D.each_with_index.any?{|d,i| i > 0 && d == 0 }
  puts 0
else
  puts (1 ... L.size).inject(1){|sum, i| (sum * L[i-1] ** L[i]) % 998244353 }
end
