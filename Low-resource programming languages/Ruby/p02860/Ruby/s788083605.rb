N = gets.chomp.to_i
S = gets.chomp
if N%2 == 1
    puts "No"
else
    for i in 0...N/2 do
        if S[i] != S[i+N/2]
            puts "No"
            exit
        end
    end
    puts "Yes"
end