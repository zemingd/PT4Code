S = gets.chomp
N = S.size
 
OI = N.times.map { |i| (i % 2).to_s }.join
 
match_cnt = 0
unmatch_cnt = 0
S.size.times do |i|
  if S[i] == OI[i]
    match_cnt += 1
  else
    unmatch_cnt += 1
  end
end
 
puts [match_cnt, unmatch_cnt].min