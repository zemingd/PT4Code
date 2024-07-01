n = gets.to_s.to_i
a = [0] + gets.to_s.split.map{|i| i.to_i }

(n/2).downto(1) do |i|
  a[i] = a.select.with_index{|s,j| j >= i && j % i == 0 }.reduce(0){|s,t| s+=t } & 1
end

a = a.map.with_index{|k,i| i * k }.select{|i|i>0}

p a.size
puts a.join(" ")