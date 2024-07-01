_n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)
ary = ary.map.with_index do |attr, idx|
  attr - (idx + 1)
end

avg1 = (arr.inject(&:+) / (ary.size.to_f)).ceil
avg2 = (arr.inject(&:+) / (ary.size.to_f)).floor
ans1 = ary.inject(0) do |sum, attr|
  sum + (attr - avg1).abs
end
ans2 = ary.inject(0) do |sum, attr|
  sum + (attr - avg2).abs
end


puts [ans1, ans2].min