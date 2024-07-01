s = gets.chomp
n=s.length
unless s == s.reverse
    puts 'No'
    exit
end
s_b =s.slice(0..((n-1)/2-1))
unless s_b == s_b.reverse
    puts 'No'
    exit
end
s_c = s.slice(((n+3)/2-1)..(n-1))
unless s_c == s_c.reverse
    puts "No"
    exit
end
puts 'Yes'