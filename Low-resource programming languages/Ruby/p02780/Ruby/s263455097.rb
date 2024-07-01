n, k = gets.split.map(&:to_i)
p = gets.split.map{|x| x.to_i + 1}
puts Array.new(n - k + 1){|i| p[i...(i + k)].sum}.max / 2.0