S = gets.chomp.split('')

count = 0
i = 0

S.length.times do |i|
    if i.even? then
        if S[i].eql?('0') then
            count = count + 1
        end
    else
        if S[i].eql?('1') then
            count = count + 1
        end
    end
end

count2 = 0
i = 0

S.length.times do |i|
    if i.odd? then
        if S[i].eql?('0') then
            count2 = count2 + 1
        end
    else
        if S[i].eql?('1') then
            count2 = count2 + 1
        end
    end
end

if count < count2 then
    print count
else
    print count2
end