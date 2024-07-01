n = gets.chomp.to_i
s_ary = gets.chomp.to_s.chars

c = 0
s_ary.each_with_index do |v, k|
  if v == "#" && s_ary[k + 1] == "."
    s_ary[k+1] = "#"
    c += 1
  end
end
puts c