S=gets
sum=0
S.chomp.split('').each{|c| if c == 'o' then sum = sum + 1 end}
puts 700 + sum * 100