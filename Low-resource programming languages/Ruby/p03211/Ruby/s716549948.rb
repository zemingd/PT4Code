s = gets.chomp
n = s.size

min = 10**9
(n-2).times{|i|
  t = (s[i..i+2].to_i-753).abs
  min = t if min>t
}

p min
