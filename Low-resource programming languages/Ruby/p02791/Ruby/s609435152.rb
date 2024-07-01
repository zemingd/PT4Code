gets
ary = gets.chomp.split.map(&:to_i)
ret = 0
ary.each.with_index(1) do |pi, i|
  ret += 1 if pi <= ary[0, i].min
end
puts ret
