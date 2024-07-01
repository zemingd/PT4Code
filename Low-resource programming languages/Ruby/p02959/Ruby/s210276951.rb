##C - City Savers
#1行目
hoge = gets.chomp.to_i

#2,3行目読み込み
x = gets.chomp.split(" ").map!{|i | i.to_i} 
y = gets.chomp.split(" ").map!{|i | i.to_i} 

unchi = 0

for i in 0..(hoge-1) do
  if x[i] >= y[i]
    unchi = unchi + y[i]
  elsif x[i] + x[i+1] > y[i]
    x[i+1] = x[i+1] -y[1] + x[i]
    unchi = unchi + y[i]
  else
    unchi = unchi + x[i] + x[i +1]
    x[i+1] = 0
  end
end

print unchi