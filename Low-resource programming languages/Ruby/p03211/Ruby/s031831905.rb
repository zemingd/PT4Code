S = gets.chomp.chars
ans = Array.new
S.each_cons(3) do |chr|
  ans << (chr.join.to_i - 753).abs
end
puts ans.min
