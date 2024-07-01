nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

s = gets.chomp
s[k-1] = s[k-1].downcase
puts s  