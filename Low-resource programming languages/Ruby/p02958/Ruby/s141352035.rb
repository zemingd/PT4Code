##B - 0 or 1 Swap
#1行目
hoge = gets.chomp.to_i

#2行目読み込み
x = gets.chomp.split(" ").map!{|i | i.to_i} 

y = x.min(hoge)

unchi = 0

for i in 0..(hoge-1) do
  if x[i] != y[i]
    unchi = unchi + 1
  end
end

if unchi == 0 or unchi == 2
  print "YES"
else
  print "NO"
end