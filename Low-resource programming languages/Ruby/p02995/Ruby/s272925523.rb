a, b, c, d = gets.split.map(&:to_i)
#a以上b以下の整数を配列に入れる
int_list = Array.new
for i in a..b do
  if i%c != 0 && i%d != 0
    int_list.push(i)
  end
end
#print(int_list, "\n")
#int_listの要素の中から, c, dのどちらでも割り切れない要素の個数を数える。
count = int_list.size
#count = 0
#int_list.each do |int|
  #if int % c == 0 || int % d == 0
    #count -= 1
  #end
#end
p count