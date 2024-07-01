lim = gets.chomp.split[1].to_i
ary = gets.chomp.split
count = 0
while ary.uniq.count > lim
  uniq_ary = ary.uniq
  num_ary = []  #文字の数
  uniq_ary.each{|k| num_ary << ary.count(k)}
  min = uniq_ary[num_ary.index(num_ary.min)]  #最も少ない文字
  count += num_ary.min #最小の文字の数をカウントアップ
  ary.delete(min)  #最小の文字を書き換えたことにして削除
end
puts count
