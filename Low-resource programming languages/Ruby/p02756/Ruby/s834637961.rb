s = gets.strip
q = gets.to_i

one_odd = false

previous = []

q.times do |i|
  t, f, char = gets.split

  if t == '1'
    one_odd = !one_odd
    # 1が続いたら何もしない
    if previous[0] == '1'
      next
    else
      # 連続でない1なら保存しておく
      previous = [t]
      next
    end
  end
  
  if previous[0] == '1'
    f = (['1', '2'] - [f]).first
  end
  
  if f == '1'
    s = char + s
  else
    s = s + char
  end
end

if one_odd
  puts s.reverse!
else
  puts s
end

