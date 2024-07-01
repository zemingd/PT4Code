A, B = gets.split.map(&:to_i)
S = gets.chomp.split("-")
if S.size == 2 && S[0].size == A && S[1].size == B
    puts :Yes
else
    puts :No
end