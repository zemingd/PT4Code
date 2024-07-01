s=gets.chomp
k=gets.to_i

if k==1
    puts s[0]
    return
end

n=s.length
n.times do |i|
    if s[i]!="1"
        puts s[i]
        return
    end
end
puts 1
