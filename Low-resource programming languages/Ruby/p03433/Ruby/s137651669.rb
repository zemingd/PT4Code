n, a = gets.chop.split.map(&:to_i)
puts n % 500 =< a ? "YES" : "NO"