S = gets.chomp.split('')

cnt = 0
S.each_with_index do |s, i|
  if s == 'R' && cnt == 0
    cnt += 1
  elsif cnt >= 1 && s == 'R' && S[i-1] == 'R'
    cnt += 1
  end
end

puts cnt
