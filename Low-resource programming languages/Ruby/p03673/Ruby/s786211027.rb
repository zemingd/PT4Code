# 0 originのインデックスで偶数降順+奇数昇順の配列
odd_arr = []
even_arr = []
n = gets.chomp.to_i
gets.chomp.split.each.with_index do |a, idx|
  if idx.odd?
    even_arr << a
  else
    odd_arr << a
  end
end
puts [even_arr.reverse + odd_arr].join(" ")