n = gets.to_i
a = [0] + gets.split.map(&:to_i)

(n/2).downto(1) do |i|
  s = 0
  i.step(n,i).each{|j| s += a[j] }
  a[i] = s % 2
end

ans = (1..n).select{ |i| a[i] == 1 }
puts ans.size, ans * " "