n=gets.chomp.to_i
t,a=gets.chomp.split(" ").map(&:to_i)
#平均気温がAの時の最適標高x
x=(t-a)/0.006
#最適標高との差を配列に代入
h=gets.chomp.split(" ").map{|h| (h.to_i-x).abs}
#最適標高に最も近い地点を出力
for i in 0..(n-1) do
  if h[i]==h.min then
    puts i+1
  end
end