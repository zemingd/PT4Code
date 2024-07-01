n = gets.to_i
as = gets.split.map(&:to_i).map.with_index { |x, i| x - i - 1 }
sum = as.inject(:+)
ave_f = sum.fdiv(n).floor
ave_c = sum.fdiv(n).ceil
ans_f = 0
ans_c = 0
as.each do |a|
  ans_f += (a-ave_f).abs
  ans_c += (a-ave_c).abs
end
p [ans_f, ans_c].min