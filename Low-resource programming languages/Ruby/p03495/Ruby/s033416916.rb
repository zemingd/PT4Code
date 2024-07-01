lim = gets.chomp.split[1].to_i
ary = gets.chomp.split
count = 0
while ary.uniq.count > lim
  uniq_ary = ary.uniq
  num_ary = []  #文字の数
  uniq_ary.each{|k| num_ary << ary.count(k)}
  min = uniq_ary[num_ary.index(num_ary.min)]  #最も少ない文字
  max = uniq_ary[num_ary.index(num_ary.max)]  #最も多い文字
  count += ary.count(min) #最小の文字の数をカウントアップ
  ary.map!{|k| k == min ? max : k}  #最小の文字の場合は最大の文字に書き換え　そうでなければそのまま
end
puts count
