N = gets.to_i
x_list = gets.split.map(&:to_i)

for i in 0..N-1 do
    tmp_list = Marshal.load(Marshal.dump(x_list))
    tmp_list.slice!(i)
    tmp_list.sort!
    puts(tmp_list[(tmp_list.size)/2])
end