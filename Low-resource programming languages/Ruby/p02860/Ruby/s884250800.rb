n = $stdin.gets.chomp.to_i
str = $stdin.gets.chomp

if n % 2 == 1
    puts "No"
    exit
end

ans = "Yes"

for i in 1..n/2
    if str[i-1] != str[n/2-1+i]
        ans = "No"
    end 
end

puts ans