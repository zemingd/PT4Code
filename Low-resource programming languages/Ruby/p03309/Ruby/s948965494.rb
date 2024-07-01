def sum_abs ary, b
  ary.inject(0) do |sum, attr|
    sum + (attr - b).abs
  end
end

_n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)
ary = ary.map.with_index do |attr, idx|
  attr - (idx + 1)
end.sort

# Max20万計算だからOK
sum_ary = []
ary.each do |i|
  sum_ary.push sum_abs(ary, i)
  next if sum_ary.size == 1
  break if sum_ary[-2] <= sum_ary[-1]
end

puts sum_ary[-2]
