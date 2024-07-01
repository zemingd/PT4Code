# n人の人に聞く、m個のメニューの好き嫌い
n, m = gets.split(" ").map(&:to_i)
menu = []
m.times do
  menu << 0
end

n.times.each do |n|
  fav = gets.split(" ").map(&:to_i)
  fav_num = fav[0]
  fav.shift # fav[0]を削除
  fav_num.times.each do |i|
    menu[fav[i]-1] += 1
  end
end

count = 0
menu.each do |num|
  count += 1 if num == n
end

puts count
