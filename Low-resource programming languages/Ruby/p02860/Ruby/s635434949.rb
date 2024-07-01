N = gets.to_i
S = gets.chomp
mid = N / 2

if N == 1
    puts "No"
    exit
end

puts S.slice(0..(mid-1)) == S.slice(mid..(N-1)) ? "Yes" : "No"