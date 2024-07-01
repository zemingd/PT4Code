k = gets.to_i
a, b = gets.chomp.split.map(&:to_i)
ok = false
a.upto(b){|x| ok = true if x % k == 0}
puts (ok ? "OK" : 'NG')