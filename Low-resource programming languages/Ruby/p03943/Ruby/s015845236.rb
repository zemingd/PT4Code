abc = gets.chomp.split.map(&:to_i)
ans = abc.inject(:+)

if (ans / abc.max == 2) && (ans % abc.max == 0)
    puts 'Yes'
else
    puts 'No'
end