s = gets.chomp.split('')
t=[]
s.each do |x|
    if x=='B'
        t.pop
    else
        t.push x
    end
end
puts t.join('')