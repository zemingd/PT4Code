n, _l = gets.chomp.split.map(&:to_i)
strs = []
n.times { strs << gets.chomp }
print strs.sort.join