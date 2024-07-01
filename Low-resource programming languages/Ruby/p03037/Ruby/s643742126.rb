_n, m = gets.split.map(&:to_i)
# [](l,r)
cards = Array.new(m) { gets.split.map(&:to_i) }

ls, rs = cards.transpose
p((ls.max..rs.min).size)
