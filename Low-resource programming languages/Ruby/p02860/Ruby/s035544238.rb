N = gets.to_i
S = gets.chomp
if N.odd?
  puts :No
else
  d = N/2
  puts S[0,d] == S[d, d] ? :Yes : :No
end