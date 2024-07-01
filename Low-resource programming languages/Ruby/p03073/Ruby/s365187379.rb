ary = gets.chomp.chars.map(&:to_i)

c = 0
ary.each_with_index do |v, k|
  if k != 0
    if v == ary[k-1]
      ary[k] = v == 0 ? 1 : 0
      c += 1
    end
  end
end
puts c