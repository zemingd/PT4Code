k = gets.chomp.split.map(&:to_i).first
a, b = gets.chomp.split.map(&:to_i)

if a % k == 0 || b % k == 0
    puts 'OK'
    exit
end

puts a / k < b / k ? 'OK' : 'NG'
