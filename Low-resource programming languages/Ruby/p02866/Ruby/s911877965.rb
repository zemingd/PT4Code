a = gets.chop.split(' ').map { |e| e.to_i }

if (a[0] != 0) 
    puts 0
    exit
end   

max = 0
m = {}

a.each do |num|
    max = [max, num].max
    if m[num]
        m[num] += 1
    else
        m[num] = 1
    end
end

unless m[0]
    puts 0
    exit
end    

prevCount = 1
ans = 1

(1..max).each do |i|
    unless m[i]
        puts 0
        exit
    end

    m[i].times do
        ans = (ans * prevCount) % 998244353
    end

    prevCount = m[i]
end

puts ans