n = gets.strip.to_i
a = n.times.map { gets.strip }

correct = 'Yes'
last_word = a[0][0]
if a.uniq.size == n
  a.each_with_index do |s, i|
    unless last_word.eql?(s[0])
      correct = 'No'
      break
    end
    last_word = s[-1]
  end
else
  correct = 'No'
end

puts correct
