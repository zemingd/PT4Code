a,b,c = gets.split.map(&:to_i)
r=b+c-a
print r < 0 ? 0 : r