lim = gets.chomp.split[1].to_i
ary = gets.chomp.split
count = 0
uniq_ary = ary.uniq
size = uniq_ary.size
num_ary = []  #文字の数
uniq_ary.each{|k| num_ary << ary.count(k)}
while size > lim
  min_idx = num_ary.index(num_ary.min)  #最も少ない文字の配列index
  min = uniq_ary[min_idx] #最も少ない文字
  count += num_ary.min #最小の文字の数をカウントアップ
  ary.delete(min)  #最小の文字を書き換えたことにして削除
  uniq_ary.delete(min)
  num_ary[min_idx] = [] #num_aryからも削除
  size -= 1
end
puts count
