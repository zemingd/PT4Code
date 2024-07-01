s = gets.chomp.chars
res = s[5].to_i === 0 && s[6].to_i <= 4 && s[7].to_i <= 3 ? 'Heisei' : 'TBD'
puts res