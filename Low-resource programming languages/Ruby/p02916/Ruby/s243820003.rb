#1行目
hoge = gets.chomp.to_i - 1

#2行目読み込み
a = gets.chomp.split(" ").map!{|i| i.to_i}
b= gets.chomp.split(" ").map!{|i| i.to_i}
c = gets.chomp.split(" ").map!{|i| i.to_i}

unchi = b[a[0]-1]

for i in 1..hoge do
 unchi = unchi + b[a[i]-1]
 if a[i] == a[i-1] + 1
   unchi = unchi + c[a[i]-2]
 end
end

print unchi