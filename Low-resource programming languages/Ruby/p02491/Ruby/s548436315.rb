input = gets.chomp.split(" ")
puts "#{input[0].to_i / input[1].to_i} #{input[0].to_i % input[1].to_i} #{sprintf("%.6f",input[0].to_f / input[1].to_f)}"