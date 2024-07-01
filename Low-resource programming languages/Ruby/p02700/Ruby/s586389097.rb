a,b,c,d = gets.chomp.split(' ').map(&:to_i)

count_t = c % b == 0 ? c/b : c/b + 1
count_a = a % d == 0 ? a/d : a/d + 1

if count_t <= count_a
    puts "Yes" 
else
    puts "No"
end