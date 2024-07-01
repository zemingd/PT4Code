S = gets.chomp.reverse
words = %W(dream dreamer erase eraser).map(&:reverse)

num = S.length
cnt = 0
flg = false
catch :loop_break do
while(cnt < num) do
  words.each do |word|
    if S[cnt..(cnt + word.length-1)] == word
      cnt += word.length
      flg = true
      next
    end
  end
  throw :loop_break if flg == false
end
end
puts "YES" if flg == true
puts "NO" if flg == false