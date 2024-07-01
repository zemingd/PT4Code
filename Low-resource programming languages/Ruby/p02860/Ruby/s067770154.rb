N = readline.to_i
S = readline

if S[0, N/2] == S[N/2, N] then
    puts "Yes"
else
    puts "No"
end