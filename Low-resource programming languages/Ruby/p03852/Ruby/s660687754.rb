str = STDIN.gets.chomp
flg = 0
["a","i","u","e","o"].each do |wk|
  flg = 1 if wk == str
end
flg == 1 ? (puts 'vowel') : (puts 'consonant')