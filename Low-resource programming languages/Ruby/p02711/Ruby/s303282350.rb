# N = gets.chomp.to_i
# A, B, C = gets.chomp.split.map(&:to_i)
S = gets.chomp.chars

ans = false
0.upto(S.size-1).each do |i|
  if S[i] == '7'
    ans = true
  end
end

if ans
  print "Yes\n"
else 
  print "No\n"
end
