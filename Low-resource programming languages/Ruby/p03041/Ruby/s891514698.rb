n, i = readline.split.map(&:to_i)
s = readline.chomp
puts s[0...i]+s[i].lowercase+s[i+1...-1]