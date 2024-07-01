N = gets.to_i
S = gets.chomp

ss = S.split(//)
e = ss.count('E')
ets = ss.inject([e]){|a, s| a << (s == 'E' ? a[-1] -1 : a[-1])}.drop(1)
wts = ss.inject([0]){|a, s| a << (s == 'W' ? a[-1] + 1 : a[-1])}.take(N)
puts ets.zip(wts).map{|e, w| e + w}.min