line = gets.chomp
n,m = line.split.map(&:to_i)

l,r = gets.chomp.split.map(&:to_i)
id_arr = (l..r).to_a
while a = gets do
  a = a.chomp.split.map(&:to_i)
  id_arr = id_arr & (a[0]..a[1]).to_a
end

puts id_arr.size