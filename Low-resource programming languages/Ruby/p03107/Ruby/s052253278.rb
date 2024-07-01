lst=gets.chomp.split("").map(&:to_i)
print [lst.count(0),lst.count(1)].min*2