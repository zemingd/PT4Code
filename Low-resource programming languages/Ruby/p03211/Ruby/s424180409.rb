s = gets.chomp
tmp = s.split("")
ans = []
(0..s.size-3).each do |i|
  ans << tmp[i..i+2].join.to_i
end
puts ans.min_by{|x|(x-753).abs}