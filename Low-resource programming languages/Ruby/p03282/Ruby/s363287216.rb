S = gets.chomp
K = gets.to_i

idx = S.chars.index{|c| c != "1"}
if idx.nil? || (idx+1) > K
  puts "1"
else
  puts S[idx]
end