#回数, 味の素ち?を入力
n, l = gets.split.map(&:to_i)
#taste_list = 味の配列, この中の最小値のリンゴを食べる
taste_list = Array.new
taste_list2 = Array.new
injecter = 0
for i in 1..n do
  #味 = i + l -1
  taste = i + l -1
  taste_list.push(taste.abs)
  taste_list2.push(taste)
end
#print(taste_list, "\n")
a = taste_list.index(taste_list.min)
taste_list.delete_at(a)
taste_list2.delete_at(a)
p taste_list2.inject(:+)