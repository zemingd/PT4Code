n = gets.to_i
string = "#{n}"
a = string.split("").map{|s| s.to_i}


sum = a.inject(&:+)


answer = n % sum
if answer ==0
    puts "Yes"
else
    puts "No"
end
