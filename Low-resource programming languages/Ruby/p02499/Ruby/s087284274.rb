input = gets
"abcdefghijklmnopqrstuvwxyz".split("").each do |c|
    puts "#{c} : #{input.count(c)}"
end