S = gets.chomp
N = S.length

if S != S.reverse
    puts "No"
elsif S.slice(0...((N - 1) / 2)) != S.slice(0...((N - 1) / 2)).reverse
    puts "No"
elsif S.slice(((N + 1) / 2)...N) != S.slice(((N + 1) / 2)...N).reverse
    puts "No"
else
    puts "Yes"
end

