# 入力
N = gets.to_i
x = []
x = gets.split.map(&:to_i)

"自分の解答"
# # xの平均を四捨五入
# m = ((x.inject(:+)).to_f/N.to_f).round

# var = 0
# N.times do |i|
#   var += (x[i]-m)**2
# end
# puts var

"想定解"
ans = 10e6
1.upto 100 do |i|
  var = 0
  N.times do |j|
    var += (x[j]-i)**2
  end
  
  ans = [var, ans].min
end
puts ans