n = gets.to_s.to_i
a = [0] + gets.to_s.split.map{|i| i.to_i }

(n/2).downto(1) do |i|
  a[i] = a.select.with_index{|s,j| j >= i && j % i == 0 }.reduce(0){|s,t| s+=t } & 1
end

ans = (1..n).select{ |i| a[i] == 1 }
puts ans.size, ans * " "