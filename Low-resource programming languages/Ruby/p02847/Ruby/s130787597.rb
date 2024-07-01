as=["SUN","MON","TUE","WED","THU","FRI","SAT"]
N=gets.chomp
if N=="SUN"
    puts 7
    exit
end
puts 7-as.index(N)