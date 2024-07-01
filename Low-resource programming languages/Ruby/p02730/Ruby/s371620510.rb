# frozen_string_literal: true

S = gets.chomp
N = S.size
S1 = S[0..((N - 1) / 2 - 1)]
S2 = S[((N + 3) / 2 - 1)..-1]

if S == S.reverse && S1 == S1.reverse && S2 == S2.reverse
  puts 'Yes'
else
  puts 'No'
end