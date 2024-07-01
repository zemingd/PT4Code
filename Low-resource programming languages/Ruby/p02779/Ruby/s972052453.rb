n = gets.chomp.to_i
a = gets.split.map(&:to_i)

a.select do |i|
    if a.count(i) > 1
      puts "No"
      break
    end
end

puts "Yes"