N, x = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

s = As.sort.inject([0]){|s, a| s << s.last + a}.drop(1).take_while{|m| m <= x}
puts s.last == x ? s.length : [s.length - 1, 0].max