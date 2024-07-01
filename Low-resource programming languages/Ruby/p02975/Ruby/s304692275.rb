N = gets.to_i
caps = gets.split.map(&:to_i)
if N % 3 != 0
    puts 'No'
    exit
end

puts caps.uniq.inject{|acc, cap| acc ^ cap} == 0 ? 'Yes' : 'No'
