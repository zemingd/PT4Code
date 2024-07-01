n = gets.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

a_index = []
(1..n).each do |i|
    print a.index(i) + 1
    if i != n
        print " "
    else
        print "\n"
    end
end