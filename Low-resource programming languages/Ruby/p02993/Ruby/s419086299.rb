S = gets.to_i
cnt = 0
cnt += 1 if S[0] == S[1]
cnt += 1 if S[1] == S[2]
cnt += 1 if S[2] == S[3]
puts 'Bad' if cnt == 1
puts 'Good' if cnt == 0