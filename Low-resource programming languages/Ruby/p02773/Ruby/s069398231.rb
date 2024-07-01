def poll(words)
  ok = []
  max = 0
  words.each do |s|
    if max < words.count(s)
      ok = []
      ok.push(s)
      max = words.count(s)
    elsif max == words.count(s)
      ok.push(s)
    end
  end
  puts ok.uniq.sort
end

words = []
amount = gets.chomp.to_i
(1..amount).each do |i|
  words.push(gets.chomp.to_s)
end
poll(words)