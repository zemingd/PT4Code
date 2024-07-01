s = gets.chomp
t = gets.chomp
used = []

(0..(s.length - 1)).each do |i|
  if s[i] != t[i]
    used << [s[i], t[i]]
  end
end
used = used.uniq
len = used.length
flg = 0
(0..(len - 1)).each do |i|
  (0..(len - 1)).each do |j|
    if i != j &&
       ((used[i].first == used[j].first && used[i].last != used[j].last) ||
       (used[i].last == used[j].last && used[i].first != used[j].first))
      puts 'No'
      flg = 1
      break
    end
  end
  break if flg == 1
end
puts 'Yes' if flg == 0