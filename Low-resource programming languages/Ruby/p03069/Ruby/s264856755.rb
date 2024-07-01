n = gets.chomp.to_i
s_ary = gets.chomp.to_s.chars
s_ary2 = s_ary.dup

c = 0
s_ary.each_with_index do |v, k|
  if v == "#" && s_ary[k + 1] == "."
    s_ary[k+1] = "#"
    c += 1
  end
end

c2 = 0
s_ary2.each_with_index do |v, k|
  if v == "." && s_ary[k - 1] == "#"
    s_ary[k+1] = "."
    c2 += 1
  end
end

puts c > c2 ? c2 : c
