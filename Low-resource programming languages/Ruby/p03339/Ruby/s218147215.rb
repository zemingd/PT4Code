n = gets.to_i
s = gets.chomp
wc = s[1...n].count(?E)
min = wc
(1...n).each{|i|
    wc += 1 if s[i-1]==?W
    wc -= 1 if s[i]==?E
    min = [min, wc].min
}
p min