N = gets.to_i
A = gets.split.map &:to_i
h = A.group_by{|x| x}.map{|k, v| [k, v.size] }.sort_by{|k, v| v}
puts case h.size
when 1
  h[0][0] == 0
when 2
  h[0][1] * 2 == h[1][1] && h[0][0] == 0
when 3
  h[0][1] == h[1][1] && h[1][1] == h[2][1] && h[0][0] ^ h[1][0] ^ h[2][0] == 0
else
  false
end ? :Yes : :No