S = gets.chomp

ans = 'AC'

ans = 'WA' unless S.start_with?('A')
ans = 'WA' if S[2..-2].count('C') != 1
ans = 'WA' if S.count('A-Z') != 2

puts ans