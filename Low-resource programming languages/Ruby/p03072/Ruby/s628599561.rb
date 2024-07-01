N = gets.to_i
H = gets.split.map(&:to_i)
p H.select.with_index {|e, i| H[0..i].all? {|j| j <= e } }.count