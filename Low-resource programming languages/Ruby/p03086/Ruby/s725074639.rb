s= gets.chomp
puts s
acgt = ['A','C','G','T']
count = 0
max = []
s.length.times do |a|
    if acgt.include?(s[a])
        count += 1
    else
        max <<count
        count = 0
    end   
end
puts max.max
