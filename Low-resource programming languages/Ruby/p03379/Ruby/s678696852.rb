N = gets.to_i
x_list = gets.split.map(&:to_i)

x_hash = {}
for i in 0..x_list.size-1 do
    x_hash[i] = x_list[i]
end
sorted_list = Marshal.load(Marshal.dump(x_list.sort))
p(sorted_list)
for i in 0..N-1 do
    tmp_list = Marshal.load(Marshal.dump(sorted_list))
    tmp_list.slice!(tmp_list.index(x_hash[i]))
    puts(tmp_list[(tmp_list.size)/2])
end