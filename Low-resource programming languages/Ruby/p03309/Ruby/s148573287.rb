n = gets.to_i
as = gets.split.map(&:to_i).map.with_index { |x, i| x - i - 1 }
if n.odd?
  med = as[n/2]
  p as.map { |a| (a-med).abs }.inject(:+)
else
  med = as[n/2-1] + as[n/2]
  med_f = med.fdiv(2).floor
  med_c = med.fdiv(2).ceil
  ans_f = 0
  ans_c = 0
  as.each do |a|
    ans_f += (a-med_f).abs
    ans_c += (a-med_c).abs
  end
  p [ans_f, ans_c].min
end