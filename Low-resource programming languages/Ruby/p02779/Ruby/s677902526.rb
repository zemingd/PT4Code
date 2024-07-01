N = gets.to_i
ary = gets.chomp.split(" ")

aryuniq = ary.uniq

if ary == aryuniq 
    puts "YES"
else
    puts "NO"
end