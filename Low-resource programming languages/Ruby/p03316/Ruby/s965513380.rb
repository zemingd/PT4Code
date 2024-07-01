n = gets
sn = 0
n.chomp.split("").map(&:to_i).map {|x| sn += x}
n = n.to_i
print n % sn == 0 ? "Yes" : "No"