X = gets.chomp
A = X.split('')[0].to_i
B = X.split('')[1].to_i
C = X.split('')[2].to_i
D = X.split('')[3].to_i

if A+B+C+D == 7
    puts "#{A}+#{B}+#{C}+#{D}=7"
elsif A+B+C-D == 7
    puts "#{A}+#{B}+#{C}-#{D}=7"
elsif A+B-C+D == 7
    puts "#{A}+#{B}-#{C}+#{D}=7"
elsif A-B+C+D == 7
    puts "#{A}-#{B}+#{C}+#{D}=7"
elsif A+B-C-D == 7
    puts "#{A}+#{B}-#{C}-#{D}=7"
elsif A-B+C-D == 7
    puts "#{A}-#{B}+#{C}-#{D}=7"
elsif A-B-C+D == 7
    puts "#{A}-#{B}-#{C}+#{D}=7"
else
    puts "#{A}-#{B}-#{C}-#{D}=7"
end
