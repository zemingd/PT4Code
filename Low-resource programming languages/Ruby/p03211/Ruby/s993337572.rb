s = gets.chomp.split("")
abs_arr = []
n = s.count
like = 753

(0..n).each do |i|
  if (i+2) <= (n-1)
    abs_arr <<  (s[i..(i+2)].join.to_i - like).abs
  end
end

p abs_arr.min