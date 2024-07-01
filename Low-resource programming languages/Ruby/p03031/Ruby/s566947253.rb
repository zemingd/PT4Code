n,m = gets.chomp.split(' ').map(&:to_i)
lamps = []
m.times do
  lamps << gets.chomp.split(' ').map(&:to_i)
end
p_arr = gets.chomp.split(' ').map(&:to_i)
lamps.each.with_index do |lamp,id|
  lamp << p_arr[id]
end
ans = 0
pattern = 0
while pattern < 2**n
  pattern_list = pattern.to_s(2).chars.map(&:to_i)
  k = n - pattern_list.size
  k.times do
    pattern_list.unshift(0)
  end
  pattern_list.reverse!
  count = 0
  lamps.each do |lamp|#各ランプが点灯しているかをチェック
    j = 1
    on_count = 0#Onの個数
    while j < lamp.size - 1
      if pattern_list[lamp[j]-1] == 1
        on_count += 1
      end
      j += 1
    end
    if on_count % 2 == lamp[-1]
      count += 1
    end
  end
  if count == lamps.size#全てのランプをチェックしたら点灯数チェック
    ans += 1
  end
  pattern += 1
end
puts ans