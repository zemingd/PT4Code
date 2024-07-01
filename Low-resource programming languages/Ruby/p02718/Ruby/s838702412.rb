N = gets.chomp.split(" ")
all = gets.chomp.split(" ")
sum = 0
for i in 1..N[0].to_i
    sum += all[i - 1].to_i
end
#puts sum
good = 0

for i in 1..N[0].to_i
    if (all[i].to_i/sum.to_i) > 1 /(4 * N[1].to_i)
        good += 1
    else
        good = 0
    end
end
puts good

if good >= N[1].to_i
    puts "Yes"
else
    puts "No"
end
