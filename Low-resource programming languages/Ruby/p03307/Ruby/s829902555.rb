require 'pp'

n = gets.chomp!.to_i

if n % 2 == 0
    puts n
else
    puts 2 * n
end
