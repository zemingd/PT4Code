a, b = gets.chop.split.map(&:to_f)
ans = (a + b) / 2
puts ans.to_s =~ /^[0-9]+.0/ ? ans.to_i : 'IMPOSSIBLE'