S = gets.chomp
leng = S.length
a = S.split("")
b = Array.new

for i in 0..leng-1
    
    if a[i] == '0' 
        b.push(0)
    elsif a[i] == '1'
        b.push(1)
    elsif a[i] == 'B' && b.size > 0
        b.pop
    end

end

puts b.join('')