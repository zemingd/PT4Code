n =  gets.to_i
s = gets.chomp.chars

if n % 2 == 0 && s.drop(n / 2).zip(s).all?{|a, b| a == b}
    puts 'Yes'
else
    puts 'No'
end
