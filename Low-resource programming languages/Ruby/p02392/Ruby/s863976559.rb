a, b, c = gets.split.map(&:to_i)

unless a < b
  puts "No"
  exit
end

unless b < c
    puts "No"
    exit  
end

puts "Yes"

