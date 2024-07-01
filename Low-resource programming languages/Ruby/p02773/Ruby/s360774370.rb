def poll(words)
  ok = []
  ok_word = []
  num = 0
  words.each do |s|
    ok.push(words.count(s))
  end
  num = ok.max
  words.each do |s|
    if num == words.count(s)
      ok_word.push(s)
    end
  end
  puts ok_word.uniq.sort
end

words = []
amount = gets.chomp.to_i
(1..amount).each do |i|
  words.push(gets.chomp.to_s)
end
poll(words)