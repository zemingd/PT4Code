# ITP1_2_C: Sorting Three Numbers

def sort_three_num(a, b, c)
  if a < b
    b < c ? [a, b, c] : a < c ? [a, c, b] : [c, a, b]
  else
    c < b ? [c, b, a] : a < c ? [b, a, c] : [b, c, a]
  end
end

a, b, c = gets.split.map &:to_i
puts sort_three_num(a, b, c).join(' ')