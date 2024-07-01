N = gets.to_i
x_list = gets.split.map(&:to_i)
key_list = [*0..x_list.size-1]
a1 = key_list.zip(x_list).flatten
x_hash = Hash[*a1]

sorted_list = x_list.sort
for i in 0..N-1 do
    tmp_list = Marshal.load(Marshal.dump(sorted_list))
    tmp_list.slice!(tmp_list.index(x_hash[i]))
    if i+2 >= (tmp_list.size / 2) then
        puts(tmp_list[(tmp_list.size)/2])
    else
        puts(tmp_list[(tmp_list.size)/2-1])
    end
end