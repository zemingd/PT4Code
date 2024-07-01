s = gets.chomp

e = (s.length-1)/2
(0..e).each do |i|
    if s[i] != s[e * 2 - i]
        puts 'No'
        exit
    end
end

e = (e)/2
(0..e).each do |i|
    if s[i] != s[e * 2 - i]
        puts 'No'
        exit
    end
end

puts 'Yes'
