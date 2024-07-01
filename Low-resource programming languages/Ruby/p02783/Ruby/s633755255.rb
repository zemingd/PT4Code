H, A = gets.split.map(&:to_i)
puts H
puts A
if H <= A
        puts 1
else
        times = H / A
        puts H % A !=0? times + 1 : times
end
