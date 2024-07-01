s= gets.chomp
puts s
acgt = ['A','C','G','T']
count = 0
max_num = []
s.length.times do |a|
    if acgt.include?(s[a])
        count += 1
    else
        max_num << count
        count = 0
    end   
end
puts max_num.max
