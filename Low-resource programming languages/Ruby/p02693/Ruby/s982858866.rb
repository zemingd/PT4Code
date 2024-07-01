k = gets.to_i
a, b = gets.split.map(&:to_i)

ans = (a..b).to_a.any? {|n| n % k == 0}

puts ans ? "OK" : "NG"
