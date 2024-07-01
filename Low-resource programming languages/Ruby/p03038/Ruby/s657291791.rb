n = gets.split.map(&:to_i)
card = gets.split.map(&:to_i)
card.sort!
change = Array.new(n[1]).map{Array.new(2,0)}
n[1].times{|i| change[i] = gets.split.map(&:to_i)}
change.sort!{|a,b| b[1] <=> a[1]}
i = 0
j = 0
while  j < n[1] && i < n[0] && change[j][1] > card[i]
  for k in 1..change[j][0]
    if card[i] < change[j][1]
      card[i] = change[j][1]
      i += 1
    else
      break
    end
    if i >= n[0]
      break
    end
  end
  if k == change[j][0]
    j += 1
  end
end
ans = 0
n[0].times{|i| ans += card[i]}
puts ans
