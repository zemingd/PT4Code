n = gets.to_s.to_i
a = [0] + gets.to_s.split.map{|i| i.to_i }

(n/2).downto(1) do |i|
  s = 0
  i.step(n,i).map{|j| s += a[j] }
  a[i] = s & 1
end

ans = (1..n).select{ |i| a[i] == 1 }
puts ans.size, ans * " 