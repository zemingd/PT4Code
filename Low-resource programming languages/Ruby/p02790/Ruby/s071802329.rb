A, B  = gets.chomp.split(" ").map(&:to_i)

if A <= B
    B.times do 
        print "#{A}"
    end
else
    A.times do 
        print "#{B}"
    end
end