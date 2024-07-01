N = gets.to_i
caps = gets.split.map(&:to_i)
if N != 3
    puts 'No'
    exit
end

puts caps.inject{|acc, cap| acc ^ cap} == 0 ? 'Yes' : 'No'
