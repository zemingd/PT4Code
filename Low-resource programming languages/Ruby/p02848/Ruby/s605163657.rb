ar = [*"A".."Z"] + [*"A".."Z"]

n = gets.chomp.to_i
s = gets.chomp.split("")
a = []
s.each do |i|
    ii = 0
    while true
        if i == ar[ii] 
            a << ar[ii+n]
            break
        end
        ii += 1
    end
end
puts a.join()