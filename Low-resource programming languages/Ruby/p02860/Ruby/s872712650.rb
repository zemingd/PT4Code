num = gets.to_i
n = num / 2
a = gets.chomp.to_s
if a[0..n-1] == a[n..num-1] && num.even?
    puts "Yes"
else
    puts "No"
end
