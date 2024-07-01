S = gets.chomp
if S.length.even?
    puts S=="hi" * (S.length/2) ? "Yes" : "No"
else
    puts "No"
end