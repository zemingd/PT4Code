s = gets.chomp.split('').map(&:to_s)
ss = s.reverse

a = s.index('A')
z = ss.index('Z')

p s[a..-z-1].size