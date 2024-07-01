str = STDIN.gets.chomp
flg = 0
vowel = ["a","i","u","e","o"]

vowel.each do |wk|
  if wk == str then
    flg = 1
  end
end
if flg == 1 then
  puts 'vowel'
else
  puts 'consonant'
end