s = gets.chomp
s2 = s.scan(/[ATCG]+/).map{|e| e.size }.max

if s2.nil?
  p 0
else
  p s2.size
end
