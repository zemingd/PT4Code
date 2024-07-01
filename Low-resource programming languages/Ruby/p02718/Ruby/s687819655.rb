# 入力
n, m = gets.split.map(&:to_i)
a = []
a = gets.split.map(&:to_i)

# aを降順ソート
a.sort!.reverse!
sum = a.inject(:+)
lim = (sum.to_f / (4*m).to_f)

m.times do |i|
  if a[i] <= lim
    puts "No"
    exit
  end
end
puts "Yes"