a = gets.split.map(&:to_i)
k = gets.to_i
a.sort!{|m,n| n<=>m}

puts a[0]*(2**k)+a[1]+a[2]