# N = gets.chomp.to_i
# A, B, C = gets.chomp.split.map(&:to_i)
S = gets.chomp.chars

ans = 0
cnt = 0
0.upto(S.size-1).each do |i|
  if ['A', 'C', 'G', 'T'].include?(S[i])
    cnt += 1
  else
    ans = [ans, cnt].max
    cnt = 0
  end
end

p ans