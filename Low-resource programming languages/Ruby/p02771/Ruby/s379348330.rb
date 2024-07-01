a,b,c = gets.split(" ").map(&:to_i)

count = 0

count = count + 1 if a == b
count = count + 1 if a == c
count = count + 1 if b == c


if count == 1
    puts "Yes"
else
    puts 'No'
end