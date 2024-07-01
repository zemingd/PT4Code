n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)

ary1_hash = Hash.new(0)
0.step(n - 1, 2) do |i|
  ary1_hash[ary[i]] += 1
end
ary1 = ary1_hash.sort_by(&:last).reverse

ary2_hash = Hash.new(0)
1.step(n - 1, 2) do |i|
  ary2_hash[ary[i]] += 1
end
ary2 = ary2_hash.sort_by(&:last).reverse

ans = if ary1[0][0] != ary2[0][0]
  ary1[1..-1].inject(0){|sum, attr| sum + attr.last}.to_i +
    ary2[1..-1].inject(0){|sum, attr| sum + attr.last}.to_i
else
  ary1_sec = ary1[1][1] rescue 0
  ary2_sec = ary2[1][1] rescue 0
  if ary1_sec >= ary2_sec
    ary1[0..-1].inject(0){|sum, attr| sum + attr.last} - ary1_sec * 2 +
      ary2[1..-1].inject(0){|sum, attr| sum + attr.last}.to_i
  else
    ary1[1..-1].inject(0){|sum, attr| sum + attr.last}.to_i +
      ary2[0..-1].inject(0){|sum, attr| sum + attr.last} - ary2_sec * 2
  end
end
puts ans