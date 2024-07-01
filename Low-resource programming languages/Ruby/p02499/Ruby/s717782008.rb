input = gets
"abcdefghijklmnopqrstuvwxyz".split("").each do |c|
    puts "#{c} : #{input.downcase.count(c)}"
end