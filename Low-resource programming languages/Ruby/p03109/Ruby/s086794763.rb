s = gets.chomp!
#pp s

n = s[0..3].to_i
t = s[5..7].to_i
h = s[7..9].to_i

if n > 2019 || (n == 2019 && t > 4) || (n == 2019 && t == 4 && h > 30)  then puts "TBD"
else puts "Heisei"
end