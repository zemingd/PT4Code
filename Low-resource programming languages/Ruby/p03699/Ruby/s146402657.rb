N = gets.to_i
s = []
for i in 0..N-1
    s[i] = gets.to_i 
end

if s.all?{|x| x % 10 == 0}

    puts 0

else 

    if s.inject(:+) % 10 == 0
        
        puts s.inject(:+) - s.select{|x| x % 10 != 0}.min 

    else

        puts s.inject(:+)

    end

end
