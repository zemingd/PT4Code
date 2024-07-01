s=gets #文字列
n=gets.chomp.to_i #n番目
slen=s.length
arr = []
for i in 0..(slen-2) do
    str=s[i]
    new_n = (str.ord+n).chr
    arr.push(new_n.chr)
end
puts arr.join