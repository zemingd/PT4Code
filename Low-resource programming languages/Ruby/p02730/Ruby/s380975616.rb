S = gets.chomp
len = S.length

# conditions 1
# puts "con 1 is ok " if S == S.reverse
# # conditions 2
# puts "con 1 is ok " if S[0,(len-1)/2] == S[0,(len-1)/2].reverse
# # conditions 3
# puts "con 2 is ok " if S[(len+3)/2-1, len] == S[(len+3)/2-1, len].reverse
puts S == S.reverse && S[0,(len-1)/2] == S[0,(len-1)/2].reverse && S[(len+3)/2-1, len] == S[(len+3)/2-1, len].reverse ? "Yes" : "No"



