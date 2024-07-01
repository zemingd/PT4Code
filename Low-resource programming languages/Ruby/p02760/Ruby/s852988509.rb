a1 = gets.split.map &:to_i
a2 = gets.split.map &:to_i
a3 = gets.split.map &:to_i
check1 = [0,0,0]
check2 = [0,0,0]
check3 = [0,0,0]
n = gets.to_i
n.times do |a|
    b = gets.to_i
    if a1.include?(b)
        check1[a1.index(b)] = 1
    elsif a2.include?(b)
        check1[a2.index(b)] = 1
    elsif a3.include?(b)
        check1[a3.index(b)] = 1
    end
end

yes = 0
3.times do |a|
    yes = 1 if (check1[a] + check2[a] + check3[a]) == 3
end
yes = 1 if (check1[0] + check2[1] + check3[2]) == 3
yes = 1 if (check1[2] + check2[1] + check3[0]) == 3
if yes == 1
    print "Yes"
elsif (check1.inject(:+) == 3 || check2.inject(:+) == 3 || check3.inject(:+) == 3)
    print "Yes"
else
    print "No"
end
